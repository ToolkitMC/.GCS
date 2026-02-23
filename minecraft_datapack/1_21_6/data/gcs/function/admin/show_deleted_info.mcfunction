# Silinen handler bilgilerini detaylı göster
tellraw @s [{"text":"  ╔═══════════════════════════","color":"dark_red","bold":true}]
tellraw @s [{"text":"  ║ ","color":"dark_red"},{"text":"🗑 SİLİNEN HANDLER","color":"red","bold":true}]
tellraw @s [{"text":"  ╠═══════════════════════════","color":"dark_red"}]
$tellraw @s [{"text":"  ║ ","color":"dark_red"},{"text":"ID: ","color":"gray"},{"text":"#$(hid)","color":"red","bold":true}]
$tellraw @s [{"text":"  ║ ","color":"dark_red"},{"text":"İsim: ","color":"gray"},{"text":"$(name)","color":"yellow"}]
$tellraw @s [{"text":"  ║ ","color":"dark_red"},{"text":"Etiket: ","color":"gray"},{"text":"$(label)","color":"white"}]
$tellraw @s [{"text":"  ║ ","color":"dark_red"},{"text":"Açıklama: ","color":"gray"},{"text":"$(description)","color":"aqua"}]
$tellraw @s [{"text":"  ║ ","color":"dark_red"},{"text":"Kategori: ","color":"gray"},{"text":"$(category)","color":"light_purple"}]
tellraw @s [{"text":"  ╚═══════════════════════════","color":"dark_red"}]

# Silme onayı efekti
playsound minecraft:entity.generic.extinguish_fire master @s ~ ~ ~ 0.7 0.8
particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0.05 20 force