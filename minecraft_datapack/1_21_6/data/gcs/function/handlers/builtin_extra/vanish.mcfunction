# ═══════════════════════════════════════════════════
# ADVANCED VANISH TOGGLE (NO PLAYER SCORE STORAGE)
# gcs.temp kullanır, scoreboard.dat şişirmez
# ═══════════════════════════════════════════════════

# Mevcut mayfly değerini temp'e al (0 / 1)
execute store result score #fly gcs.temp run data get entity @s abilities.mayfly 1

# ───────────────────────────────────────────────────
# OFF → ON
# ───────────────────────────────────────────────────
execute if score #fly gcs.temp matches 0 run function gcs:handlers/builtin_extra/_vanish_on

# ───────────────────────────────────────────────────
# ON → OFF
# ───────────────────────────────────────────────────
execute if score #fly gcs.temp matches 1 run function gcs:handlers/builtin_extra/_vanish_off

# Temizlik
scoreboard players reset #fly gcs.temp
