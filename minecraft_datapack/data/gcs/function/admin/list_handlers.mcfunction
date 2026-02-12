# Başlık
tellraw @s ""
tellraw @s {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @s [{"text":"  ","color":"gold"},{"text":"HANDLER LİSTESİ","color":"yellow","bold":true}]
tellraw @s {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @s ""

# İstatistikler
execute store result score #total gcs.count run data get storage gcs:db handlers
tellraw @s [{"text":"Toplam: ","color":"gray"},{"score":{"name":"#total","objective":"gcs.count"},"color":"aqua"},{"text":"/19 Handler","color":"dark_gray"}]
tellraw @s ""

# Kategorilere göre grupla
tellraw @s [{"text":"","color":"gold","bold":true},{"text":"🛠️ UTILITY"}]
function gcs:admin/list_by_category {category:"utility"}

tellraw @s ""
tellraw @s [{"text":"","color":"aqua","bold":true},{"text":"🚀 TELEPORT"}]
function gcs:admin/list_by_category {category:"teleport"}

tellraw @s ""
tellraw @s [{"text":"","color":"light_purple","bold":true},{"text":"⚡ ABILITY"}]
function gcs:admin/list_by_category {category:"ability"}

tellraw @s ""
tellraw @s [{"text":"","color":"green","bold":true},{"text":"🌍 WORLD"}]
function gcs:admin/list_by_category {category:"world"}

tellraw @s ""
tellraw @s [{"text":"","color":"red","bold":true},{"text":"👑 ADMIN"}]
function gcs:admin/list_by_category {category:"admin"}

tellraw @s ""
tellraw @s {"text":"═══════════════════════════════════════","color":"gold","bold":true}
tellraw @s ""
