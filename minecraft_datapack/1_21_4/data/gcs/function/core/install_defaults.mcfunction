# Varsayılan handler'ları ekle (13 tane - minimum)

# Handler 1: Yardım
data modify storage gcs:db handlers append value {hid:1,name:"help",label:"Yardım Menüsü",description:"Tüm komutları listeler",auth_level:1,enabled:1b,category:"utility",command:"function gcs:handlers/builtin/help"}

# Handler 2: Ev TP
data modify storage gcs:db handlers append value {hid:2,name:"home",label:"Eve Işınlan",description:"Spawn noktasına ışınlanma",auth_level:1,enabled:1b,category:"teleport",command:"function gcs:handlers/builtin/teleport_home"}

# Handler 3: Şifa
data modify storage gcs:db handlers append value {hid:3,name:"heal",label:"Şifa",description:"Canını ve açlığını tam doldurur",auth_level:1,enabled:1b,category:"utility",command:"function gcs:handlers/builtin/heal"}

# Handler 4: Açlık
data modify storage gcs:db handlers append value {hid:4,name:"feed",label:"Doyur",description:"Açlığını giderir",auth_level:1,enabled:1b,category:"utility",command:"effect give @s saturation 1 10"}

# Handler 5: Uçuş
data modify storage gcs:db handlers append value {hid:5,name:"fly",label:"Uçuş Modu",description:"Uçuş modunu aç/kapat",auth_level:2,enabled:1b,category:"ability",command:"execute if entity @s[nbt={abilities:{flying:0b}}] run ability @s mayfly true"}

# Handler 6: Gün/Gece Toggle
data modify storage gcs:db handlers append value {hid:6,name:"toggle_time",label:"Gün/Gece Değiştir",description:"Zamanı gündüz/gece arasında değiştirir",auth_level:2,enabled:1b,category:"world",command:"function gcs:handlers/builtin/toggle_time"}

# Handler 7: Hava Toggle
data modify storage gcs:db handlers append value {hid:7,name:"toggle_weather",label:"Hava Değiştir",description:"Hava durumunu açık/yağmurlu arasında değiştirir",auth_level:2,enabled:1b,category:"world",command:"function gcs:handlers/builtin/toggle_weather"}

# Handler 8: Gündüz
data modify storage gcs:db handlers append value {hid:8,name:"day",label:"Gündüz Yap",description:"Zamanı gündüze çevirir",auth_level:2,enabled:1b,category:"world",command:"time set day"}

# Handler 9: Spawn TP
data modify storage gcs:db handlers append value {hid:9,name:"spawn",label:"Spawn'a ışınlan",description:"Dünya spawn noktasına ışınlanma",auth_level:1,enabled:1b,category:"teleport",command:"tp @s @e[type=marker,tag=spawn_point,limit=1]"}

# Handler 10: Item Temizle
data modify storage gcs:db handlers append value {hid:10,name:"clear_items",label:"Item Temizle",description:"Yerdeki itemleri temizler",auth_level:3,enabled:1b,category:"admin",command:"kill @e[type=item,distance=..100]"}

# Handler 11: God Mode
data modify storage gcs:db handlers append value {hid:11,name:"god",label:"God Mode",description:"Ölümsüzlük modu",auth_level:3,enabled:1b,category:"ability",command:"effect give @s resistance 999999 4 true"}

# Handler 12: Speed
data modify storage gcs:db handlers append value {hid:12,name:"speed",label:"Hız Arttır",description:"Hareket hızını arttırır",auth_level:2,enabled:1b,category:"ability",command:"effect give @s speed 300 2"}

# Handler 13: Gamemode
data modify storage gcs:db handlers append value {hid:13,name:"gm",label:"Gamemode Değiştir",description:"Oyun modunu değiştirir",auth_level:3,enabled:1b,category:"admin",command:"gamemode creative @s"}

# Metadata güncelle
execute store result storage gcs:db metadata.handler_count int 1 run data get storage gcs:db handlers
data modify storage gcs:db metadata.last_update set value "System Install"

tellraw @a [{"text":"[GCS] ","color":"gold"},{"text":"13 varsayılan handler yüklendi","color":"green"}]
