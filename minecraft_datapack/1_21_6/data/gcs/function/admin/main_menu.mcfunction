# ============================================
# GCS - Ana Yönetim Paneli
# Yetki Seviyesi: 1 (Tüm yetkili kullanıcılar)
# ============================================

# Yetki kontrolü
execute unless score @s gcs.auth matches 1.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Bu menüyü açmak için yetkiniz yok!","color":"red"}]
execute unless score @s gcs.auth matches 1.. run tellraw @s [{"text":"[i] ","color":"gold"},{"text":"Bir yöneticiden yetki isteyebilirsiniz.","color":"gray"}]
execute unless score @s gcs.auth matches 1.. run return 0

# Direkt dialog aç
function gcs:ui/show {ui:"gcs:admin/main_menu"}
