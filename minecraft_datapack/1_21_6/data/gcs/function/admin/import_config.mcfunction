# ============================================
# GCS - Yapılandırma İçe Aktarma
# Yetki Seviyesi: 3 (Admin)
# ============================================

# Yetki kontrolü
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Bu komutu kullanmak için ","color":"red"},{"text":"Admin (Seviye 3)","color":"red","bold":true},{"text":" yetkisi gereklidir!","color":"red"}]
execute unless score @s gcs.auth matches 3.. run return 0

# Import dialog aç
dialog show @s {type:"minecraft:notice",title:[{"text":"📥 Import Config","color":"gold","bold":true}],body:{type:"minecraft:plain_message",contents:"Handler verilerini içe aktarmak için:\n\n§71. /data get storage gcs:db ile mevcut veriyi görün\n§72. Konsola şu komutu yazın:\n§a/data modify storage gcs:db handlers set value [VERİLER]"},can_close_with_escape:1b,pause:0b,ok:{label:"Tamam"}}
