tellraw @s ""
tellraw @s [{"text":"[✗] ","color":"red","bold":true},{"text":"Hata: Yetersiz Yetki","color":"red"}]
$tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Gereken Seviye: ","color":"gray"},{"text":"$(required)","color":"yellow"}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Mevcut Seviye: ","color":"gray"},{"score":{"name":"@s","objective":"gcs.auth"},"color":"red"}]
tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Yöneticiye başvurun.","color":"gray"}]
tellraw @s ""
