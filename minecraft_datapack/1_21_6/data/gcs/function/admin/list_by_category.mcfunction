# Bu fonksiyon her kategori için handler'ları listeler
# Recursive olarak çalışır - her handler için detay gösterir

# NOT: Bu basitleştirilmiş versiyondur
# Gerçek implementasyonda data get ile dinamik listeleme yapılabilir

$tellraw @s [{"text":"  • ","color":"dark_gray"},{"text":"Kategori: ","color":"gray"},{"text":"$(category)","color":"white"}]
tellraw @s [{"text":"    ","color":"dark_gray"},{"text":"Handler'lar bu kategoride listelenir","color":"gray","italic":true}]
