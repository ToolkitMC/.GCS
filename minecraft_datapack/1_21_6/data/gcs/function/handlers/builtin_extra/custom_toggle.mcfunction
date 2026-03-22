# ═══════════════════════════════════════════════════
# CUSTOM TOGGLE (NO PLAYER SCORE STORAGE)
# gcs.temp kullanır, scoreboard.dat şişirmez
# ═══════════════════════════════════════════════════

$execute store result score #t_$(id) gcs.temp run data get entity @s abilities.mayfly 1

# ───────────────────────────────────────────────────
# OFF → ON
# ───────────────────────────────────────────────────
$execute if score #t_$(id) gcs.temp matches 0 run $(on)

# ───────────────────────────────────────────────────
# ON → OFF
# ───────────────────────────────────────────────────
$execute if score #t_(id) gcs.temp matches 1 run $(off)

# Temizlik
$scoreboard players reset #t_$(id) gcs.temp
