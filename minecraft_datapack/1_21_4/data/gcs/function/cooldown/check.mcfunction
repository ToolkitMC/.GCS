# Cooldown aktif mi kontrol et
# Kullanim: function gcs:cooldown/check {hid:X}
# Dönüş: #cd_ok gcs.count 1=geçebilir 0=bloke
scoreboard players set #cd_ok gcs.count 1
$data modify storage gcs:temp cd_entry set from storage gcs:cooldowns cooldowns[{hid:$(hid)}]
execute if data storage gcs:temp cd_entry run function gcs:cooldown/_blocked
data remove storage gcs:temp cd_entry
