#!/usr/bin/env python3
"""
GCS Datapack Validator
Yükleme anında patlayan hataları CI'da yakalar.
"""

import os, re, sys, json

ROOT = os.path.join(os.path.dirname(__file__), "..", "minecraft_datapack")
errors = []

def err(path, line_no, msg):
    rel = path.replace(ROOT, "").lstrip("/")
    errors.append(f"  {rel}:{line_no}: {msg}")

def check_mcfunction(path, overlay):
    with open(path) as f:
        lines = f.readlines()

    is_16_plus = overlay == "1_21_6"

    for i, raw in enumerate(lines, 1):
        line = raw.rstrip()
        stripped = line.strip()

        # yorum veya boş satır → atla
        if not stripped or stripped.startswith("#"):
            continue

        is_macro_line = stripped.startswith("$")

        # 1. Negatif index — sadece 1_21_6'da hata
        if is_16_plus and "[-1]" in line:
            err(path, i, f"Negatif index [-1] — 1.21.5+'da desteklenmiyor: {stripped[:80]}")

        # 2. Makro adında nokta: $(foo.bar)
        dots = re.findall(r'\$\([\w]+\.[\w]+\)', line)
        if dots:
            err(path, i, f"Noktalı makro adı {dots} — geçersiz: {stripped[:80]}")

        # 3. Makro olmayan satırda $() — inline dialog $(query) hariç
        if not is_macro_line and "$(" in line and "dynamic/run_command" not in line and "template" not in line:
            err(path, i, f"Makro olmayan satırda $() kullanımı: {stripped[:80]}")

        # 4. Sahte makro: $ ile başlar ama $() yok
        if is_macro_line and "$(" not in line:
            err(path, i, f"Sahte makro ($ var ama $() yok): {stripped[:80]}")

        # 5. Eski dust space-separated — 1_21_6'da hata
        if is_16_plus and re.search(r'particle minecraft:dust\s+[\d.]+\s+[\d.]+\s+[\d.]+\s+[\d.]+\s+[~\d]', line):
            err(path, i, f"Eski dust syntax (space-sep) — 1.21.6+'da geçersiz: {stripped[:80]}")

        # 6. Sorunlu particle'lar — 1_21_6'da
        if is_16_plus:
            if "particle minecraft:flash " in line:
                err(path, i, f"particle:flash parametresiz — 1.21.6+'da hata: {stripped[:80]}")
            if re.search(r'particle minecraft:firework\s+[~\d]', line):
                err(path, i, f"particle:firework pozisyonlu — 1.21.6+'da hata: {stripped[:80]}")

        # 7. execute store result ... string — yok böyle komut
        if "execute store result" in line and " string " in line:
            err(path, i, f"execute store result ... string — geçersiz: {stripped[:80]}")


def check_json(path):
    try:
        with open(path) as f:
            json.load(f)
    except json.JSONDecodeError as e:
        err(path, 0, f"Geçersiz JSON: {e}")


# ── Tara ─────────────────────────────────────────────────────────────────────
for overlay in ["1_21_4", "1_21_6"]:
    overlay_path = os.path.join(ROOT, overlay)
    if not os.path.isdir(overlay_path):
        continue
    for dirpath, _, filenames in os.walk(overlay_path):
        for fn in filenames:
            fp = os.path.join(dirpath, fn)
            if fn.endswith(".mcfunction"):
                check_mcfunction(fp, overlay)
            elif fn.endswith(".json"):
                check_json(fp)

# Root JSON'lar
for fn in ["pack.mcmeta"]:
    fp = os.path.join(ROOT, fn)
    if os.path.exists(fp):
        check_json(fp)

# ── Sonuç ─────────────────────────────────────────────────────────────────────
if errors:
    print(f"\n❌ {len(errors)} hata bulundu:\n")
    for e in errors:
        print(e)
    sys.exit(1)
else:
    total = sum(
        len(files)
        for _, _, files in os.walk(ROOT)
        if any(f.endswith((".mcfunction", ".json")) for f in files)
    )
    print(f"✓ Temiz — hata yok")
