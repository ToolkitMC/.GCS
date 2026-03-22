# 🎮 Global Command System (GCS) v2.1.2

## 📋 Genel Bakış

**Global Command System**, Minecraft dünyalarınız için güçlü, modüler ve güvenli bir komut yönetim sistemidir.
Dialog tabanlı UI, çoklu komut desteği, waypoint sistemi ve back komutu ile donatılmıştır.

**Desteklenen Sürümler:** Minecraft 1.21.4+ (1_21_4 overlay) ve 1.21.6+ (1_21_6 overlay)

### ✨ Özellikler

- ✅ **Dinamik Handler Yönetimi** — Komutları runtime'da ekle, sil, düzenle
- ✅ **Yetkilendirme Sistemi** — 3 seviyeli güvenlik (Kullanıcı / Moderatör / Admin)
- ✅ **Handler Limiti** — Minimum 13, Maximum 50 handler
- ✅ **Kategori Sistemi** — Utility, Teleport, Ability, World, Admin
- ✅ **Çoklu Komut (Multi-Command)** — Tek handler'a sınırsız komut listesi
- ✅ **Dialog UI** — Kitap/sandık/chat yerine native dialog menüleri
- ✅ **Waypoint Sistemi** — Konum kaydet, listele, ışınlan, sil
- ✅ **Back Komutu** — Son TP öncesi konuma dön
- ✅ **Bakım Modu** — Sistem bakımı için özel mod
- ✅ **Export/Import** — Handler'ları yedekle ve aktar

---

## 📦 Kurulum

### Adım 1: Datapack'i Yerleştir
ZIP'i olduğu gibi dünya klasörüne koy:
```
saves/[Dünya_Adı]/datapacks/GCS_v2.1.2.zip
```

### Adım 2: Oyunda Yükle
```
/reload
```

### Adım 3: İlk Yetkilendirme
OP olarak önce direkt set et, sonra grant_auth çalıştır:
```
/scoreboard players set OyuncuAdın gcs.auth 3
/function gcs:admin/grant_auth {player:"OyuncuAdın",level:3}
```

### Adım 4: Menüyü Aç
```
/trigger gcs.ui
```

---

## 🎯 Kullanım

### Menüye Erişim
```
/trigger gcs.ui          # Yönetim paneli
/trigger gcs.run         # Komut çalıştırma menüsü
```

### Handler Çalıştırma
```
/trigger gcs.exec set <HANDLER_ID>
```

---

## 🛠️ Handler Yönetimi

### ➕ Tek Komutlu Handler Ekle

```
/function gcs:admin/add_handler {name:"isim",label:"Görünen Ad",description:"Açıklama",command:"komut",auth_level:1,category:"utility"}
```

**Örnekler:**
```
/function gcs:admin/add_handler {name:"spawn",label:"Spawn'a Git",description:"Spawn noktasına ışınlanır",command:"tp @s 0 64 0",auth_level:1,category:"teleport"}
```
```
/function gcs:admin/add_handler {name:"jump",label:"Zıplama Gücü",description:"5 dk zıplama efekti",command:"effect give @s jump_boost 300 2",auth_level:2,category:"ability"}
```

### ➕ Çoklu Komutlu Handler Ekle

`commands` alanına NBT string listesi ver — sınırsız komut:

```
/function gcs:admin/add_multi_handler {name:"buff",label:"Süper Buff",description:"Çoklu efekt",auth_level:2,category:"ability",commands:["effect give @s speed 300 2","effect give @s jump_boost 300 2","title @s actionbar {\"text\":\"⚡ Buff!\",\"color\":\"gold\"}"]}
```

### ✏️ Handler Düzenle
```
/function gcs:admin/edit_handler {hid:5,name:"yeni",label:"Yeni Ad",description:"Açıklama",command:"say güncellendi",auth_level:2,category:"utility"}
```

### ❌ Handler Sil
```
/function gcs:admin/delete_handler {hid:5}
```
> ⚠️ Minimum 13 handler korunur.

### 🔄 Handler Aktif/Pasif
```
/function gcs:admin/toggle_handler {hid:5}
```

---

## 📍 Waypoint Sistemi

```
/function gcs:waypoint/save {name:"ev"}      # Mevcut konumu kaydet
/function gcs:waypoint/go {name:"ev"}        # Kaydedilen konuma ışınlan
/function gcs:waypoint/list                  # Tüm waypointleri listele
/function gcs:waypoint/delete {name:"ev"}    # Waypoint sil
```

---

## ↩ Back Komutu

Son TP öncesi konuma dön:
```
/trigger gcs.exec set 15
```
veya:
```
/function gcs:back/go
```

---

## 👥 Yetkilendirme

| Seviye | Rol | Erişim |
|--------|-----|--------|
| **1** | 👤 Kullanıcı | Temel komutlar (heal, feed, home, back) |
| **2** | ⚡ Moderatör | Dünya komutları (time, weather, fly, kit) |
| **3** | 👑 Admin | Tüm komutlar + sistem yönetimi |

```
/function gcs:admin/grant_auth {player:"OyuncuAdı",level:1}
/function gcs:admin/grant_auth {player:"Moderator1",level:2}
/function gcs:admin/grant_auth {player:"Admin1",level:3}
/function gcs:admin/list_auth
```

---

## 📝 Varsayılan Handler'lar (19 adet)

| ID | İsim | Açıklama | Yetki |
|----|------|----------|-------|
| 1 | help | Yardım menüsü | 1 |
| 2 | home | Eve ışınlan | 1 |
| 3 | heal | Şifa | 1 |
| 4 | feed | Doyur | 1 |
| 5 | fly | Uçuş modu | 2 |
| 6 | toggle_time | Gün/Gece değiştir | 2 |
| 7 | toggle_weather | Hava değiştir | 2 |
| 8 | day | Gündüz yap | 2 |
| 9 | spawn | Spawn'a ışınlan | 1 |
| 10 | clear_items | Yerdeki itemleri temizle | 3 |
| 11 | god | God mode | 3 |
| 12 | speed | Hız artır | 2 |
| 13 | gm | Creative mod | 3 |
| 14 | super_heal | Süper şifa — çoklu komut | 1 |
| 15 | back | Önceki konuma dön | 1 |
| 16 | vanish | Görünmezlik | 3 |
| 17 | tpall | Herkesi TP | 3 |
| 18 | kit | Başlangıç kiti — çoklu komut | 2 |
| 19 | nether | Nether'a git — çoklu komut | 2 |

---

## 🔍 Arama ve İstatistikler

```
/function gcs:admin/list_handlers
/function gcs:admin/search_handler {query:"arama"}
/function gcs:admin/list_by_category
/function gcs:admin/detailed_stats
/function gcs:admin/show_stats
```

---

## 💾 Yedekleme ve Export

```
/function gcs:admin/export
/function gcs:backup/create_backup
/function gcs:backup/restore_backup
/data get storage gcs:db handlers
```

Başka dünyaya taşımak için:
```
/data modify storage gcs:db handlers set value [KOPYALADIĞIN_JSON]
```

---

## 🔧 Bakım Modu

Ana menüden veya:
```
/function gcs:admin/maintenance
```

---

## 🐛 Sorun Giderme

**Handler çalışmıyor:**
- Yetkini kontrol et: `/scoreboard players get @s gcs.auth`
- Handler aktif mi: `/function gcs:admin/list_handlers`
- Bakım modu açık mı: Ana menüden kontrol et

**Menü açılmıyor:**
- `gcs.auth` ≥ 1 gerekli
- `/reload` çalıştır
- `/scoreboard players enable @s gcs.ui`

**Yetki çalışmıyor:**
- Oyuncu adı büyük/küçük harf duyarlıdır
- Önce: `/scoreboard players set OyuncuAdın gcs.auth 3`
- Sonra: `grant_auth` çalıştır

---

## 📚 Tam Komut Referansı

```
# Yönetim
/function gcs:admin/main_menu
/function gcs:admin/add_handler {...}
/function gcs:admin/add_multi_handler {...}
/function gcs:admin/edit_handler {...}
/function gcs:admin/delete_handler {...}
/function gcs:admin/toggle_handler {...}
/function gcs:admin/list_handlers
/function gcs:admin/search_handler {...}
/function gcs:admin/grant_auth {...}
/function gcs:admin/list_auth
/function gcs:admin/detailed_stats
/function gcs:admin/export
/function gcs:admin/maintenance

# Kullanıcı
/trigger gcs.ui
/trigger gcs.run
/trigger gcs.exec set <ID>

# Waypoint
/function gcs:waypoint/save {name:"isim"}
/function gcs:waypoint/go {name:"isim"}
/function gcs:waypoint/list
/function gcs:waypoint/delete {name:"isim"}

# Sistem
/function gcs:utils/reset
/function gcs:backup/create_backup
/function gcs:backup/restore_backup
/data get storage gcs:db
```

---

## 📄 Lisans

MIT License — Özgürce kullan, değiştir, dağıt.

---

**Versiyon:** 2.1.2
**Minecraft:** 1.21.4+ / 1.21.6+
**Pack Format:** 48–94
