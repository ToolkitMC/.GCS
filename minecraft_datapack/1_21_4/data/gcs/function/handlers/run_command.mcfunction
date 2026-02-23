# Storage'dan komutu al ve güvenli şekilde çalıştır

# Komut çalıştırma öncesi log
execute if score @s gcs.auth matches 3 run tellraw @s [{"text":"[DEBUG] ","color":"dark_gray"},{"text":"Komut çalıştırılıyor...","color":"gray"}]

# Komutu çalıştır
$$(command)

# Başarı logu
execute if score @s gcs.auth matches 3 run tellraw @s [{"text":"[DEBUG] ","color":"dark_gray"},{"text":"Komut başarıyla tamamlandı","color":"green"}]
