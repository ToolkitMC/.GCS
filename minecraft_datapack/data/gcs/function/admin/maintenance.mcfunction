# Bakım modu durumunu al/oluştur
execute unless data storage gcs:db metadata.maintenance run data modify storage gcs:db metadata.maintenance set value 0b

# Toggle
execute if data storage gcs:db metadata{maintenance:0b} run data modify storage gcs:db metadata.maintenance set value 1b
execute if data storage gcs:db metadata{maintenance:1b} run data modify storage gcs:db metadata.maintenance set value 0b

# Yeni durumu kontrol et
execute if data storage gcs:db metadata{maintenance:1b} run function gcs:admin/maintenance_on
execute if data storage gcs:db metadata{maintenance:0b} run function gcs:admin/maintenance_off
