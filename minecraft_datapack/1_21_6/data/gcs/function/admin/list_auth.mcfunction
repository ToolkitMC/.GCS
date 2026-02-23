# ============================================
# GCS - Yetkili Oyuncu Listesi
# Yetki Seviyesi: 2 (Moderatör+)
# ============================================

# Yetki kontrolü
execute unless score @s gcs.auth matches 2.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Bu komutu kullanmak için ","color":"red"},{"text":"Moderatör (Seviye 2)","color":"gold"},{"text":" yetkisi gereklidir!","color":"red"}]
execute unless score @s gcs.auth matches 2.. run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Mevcut yetkiniz: ","color":"gray"},{"score":{"name":"@s","objective":"gcs.auth"},"color":"aqua"}]
execute unless score @s gcs.auth matches 2.. run return 0

# Başlık
tellraw @s ""
tellraw @s {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @s [{"text":"  ","color":"gold"},{"text":"YETKİLİ OYUNCULAR","color":"yellow","bold":true}]
tellraw @s {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @s ""

# Seviye 3 - Admin
tellraw @s [{"text":"👑 ","color":"red","bold":true},{"text":"ADMIN (Seviye 3)","color":"red","bold":true}]
execute as @a[scores={gcs.auth=3}] run tellraw @a[scores={gcs.auth=3..}] [{"text":"  • ","color":"dark_gray"},{"selector":"@s","color":"yellow"}]
execute unless entity @a[scores={gcs.auth=3}] run tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"(Yok)","color":"gray","italic":true}]

tellraw @s ""

# Seviye 2 - Moderatör
tellraw @s [{"text":"⚡ ","color":"gold","bold":true},{"text":"MODERATÖR (Seviye 2)","color":"gold","bold":true}]
execute as @a[scores={gcs.auth=2}] run tellraw @a[scores={gcs.auth=2..}] [{"text":"  • ","color":"dark_gray"},{"selector":"@s","color":"yellow"}]
execute unless entity @a[scores={gcs.auth=2}] run tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"(Yok)","color":"gray","italic":true}]

tellraw @s ""

# Seviye 1 - Kullanıcı
tellraw @s [{"text":"✓ ","color":"green","bold":true},{"text":"KULLANICI (Seviye 1)","color":"green","bold":true}]
execute as @a[scores={gcs.auth=1}] run tellraw @a[scores={gcs.auth=1..}] [{"text":"  • ","color":"dark_gray"},{"selector":"@s","color":"yellow"}]
execute unless entity @a[scores={gcs.auth=1}] run tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"(Yok)","color":"gray","italic":true}]

tellraw @s ""
tellraw @s {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @s ""
