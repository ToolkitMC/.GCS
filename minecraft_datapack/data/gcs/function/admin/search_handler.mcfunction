# Arama fonksiyonu (basitleştirilmiş)
tellraw @s ""
tellraw @s [{"text":"[🔍] ","color":"aqua","bold":true},{"text":"Arama Sonuçları","color":"yellow"}]
$tellraw @s [{"text":"  Aranan: ","color":"gray"},{"text":"\"$(query)\"","color":"white"}]
tellraw @s ""

# NOT: Gerçek implementasyonda NBT path üzerinden dinamik arama yapılabilir
# Şimdilik basit bilgilendirme mesajı

tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Arama özelliği geliştirme aşamasında.","color":"gray"}]
tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Şimdilik ","color":"gray"},{"text":"/function gcs:admin/list_handlers","color":"green","clickEvent":{"action":"run_command","value":"/function gcs:admin/list_handlers"}},{"text":" kullanın.","color":"gray"}]
tellraw @s ""
