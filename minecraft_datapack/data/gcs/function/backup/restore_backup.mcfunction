# Restore from backup
execute unless data storage gcs:backup handlers run tellraw @s [{"text":"[✗] ","color":"red","bold":true},{"text":"Yedek bulunamadı!","color":"red"}]
execute unless data storage gcs:backup handlers run return fail

$data modify storage gcs:db handlers set from storage gcs:backup/$(timestamp) handlers
$data modify storage gcs:db metadata set from storage gcs:backup/$(timestamp) metadata

tellraw @s ""
tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"Yedek geri yüklendi!","color":"green"}]
tellraw @s ""