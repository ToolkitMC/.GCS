# UYARI: Bu fonksiyon tüm GCS verilerini siler!

tellraw @s [{"text":"[!!!] ","color":"dark_red","bold":true},{"text":"SİSTEM SIFIRLANIYOR...","color":"red","bold":true}]

# Scoreboards'ları temizle
scoreboard objectives remove gcs.auth
scoreboard objectives remove gcs.hid
scoreboard objectives remove gcs.count
scoreboard objectives remove gcs.ui
scoreboard objectives remove gcs.exec

# Storage'ı temizle
data modify storage gcs:db metadata set value []
data modify storage gcs:db handlers set value []

tellraw @s ""
tellraw @s [{"text":"[✓] ","color":"green"},{"text":"Sistem başarıyla sıfırlandı!","color":"white"}]
tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Yeniden başlatmak için ","color":"gray"},{"text":"/reload","color":"green","clickEvent":{"action":"suggest_command","value":"/reload"}},{"text":" kullanın.","color":"gray"}]
tellraw @s ""

# Ses çal
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 0 1