# ============================================
# GCS - Auth Levelli Oyuncu Listesi
# Auth Level: 2 (Moderator+)
# ============================================

# Permission check
execute unless score @s gcs.auth matches 2.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"To use this command, ","color":"red"},{"text":"Moderator (Level 2)","color":"gold"},{"text":" permission is required!","color":"red"}]
execute unless score @s gcs.auth matches 2.. run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Mevcut yetkiniz: ","color":"gray"},{"score":{"name":"@s","objective":"gcs.auth"},"color":"aqua"}]
execute unless score @s gcs.auth matches 2.. run return 0

# Header
tellraw @s ""
tellraw @s {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @s [{"text":"  ","color":"gold"},{"text":"AUTHORIZED PLAYERS","color":"yellow","bold":true}]
tellraw @s {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @s ""

# Level 3 - Admin
tellraw @s [{"text":"👑 ","color":"red","bold":true},{"text":"ADMIN (Level 3)","color":"red","bold":true}]
execute as @a[scores={gcs.auth=3}] run tellraw @a[scores={gcs.auth=3..}] [{"text":"  • ","color":"dark_gray"},{"selector":"@s","color":"yellow"}]
execute unless entity @a[scores={gcs.auth=3}] run tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"(Yok)","color":"gray","italic":true}]

tellraw @s ""

# Level 2 - Moderator
tellraw @s [{"text":"⚡ ","color":"gold","bold":true},{"text":"MODERATOR (Level 2)","color":"gold","bold":true}]
execute as @a[scores={gcs.auth=2}] run tellraw @a[scores={gcs.auth=2..}] [{"text":"  • ","color":"dark_gray"},{"selector":"@s","color":"yellow"}]
execute unless entity @a[scores={gcs.auth=2}] run tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"(Yok)","color":"gray","italic":true}]

tellraw @s ""

# Level 1 - User
tellraw @s [{"text":"✓ ","color":"green","bold":true},{"text":"USER (Level 1)","color":"green","bold":true}]
execute as @a[scores={gcs.auth=1}] run tellraw @a[scores={gcs.auth=1..}] [{"text":"  • ","color":"dark_gray"},{"selector":"@s","color":"yellow"}]
execute unless entity @a[scores={gcs.auth=1}] run tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"(Yok)","color":"gray","italic":true}]

tellraw @s ""
tellraw @s {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @s ""
