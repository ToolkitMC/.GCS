# Create backup of current configuration
$data modify storage gcs:backup/$(timestamp) handlers set from storage gcs:db handlers
$data modify storage gcs:backup/$(timestamp) metadata set from storage gcs:db metadata
$data modify storage gcs:backup timestamp set value "$(timestamp)"

tellraw @s ""
tellraw @s [{"text":"[💾] ","color":"aqua","bold":true},{"text":"Yedek oluşturuldu!","color":"green"}]
$tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Zaman: ","color":"gray"},{"text":"$(timestamp)","color":"white"}]
tellraw @s ""
