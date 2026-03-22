# Snapshot yoksa hata ver
execute unless data storage gcs:backup {has_snapshot:1b} run tellraw @s [{"text":"[✗] ","color":"red","bold":true},{"text":"Geri alınacak işlem yok!","color":"red"}]
execute unless data storage gcs:backup {has_snapshot:1b} run return fail

# Geri yükle
data modify storage gcs:db handlers set from storage gcs:backup snapshot.handlers
data modify storage gcs:db metadata set from storage gcs:backup snapshot.metadata
data modify storage gcs:db toggle_states set from storage gcs:backup snapshot.toggle_states
data modify storage gcs:waypoints points set from storage gcs:backup snapshot.waypoints

# Snapshot'ı temizle (tek kullanım)
data remove storage gcs:backup has_snapshot

tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"Geri alındı!","color":"green"}]
