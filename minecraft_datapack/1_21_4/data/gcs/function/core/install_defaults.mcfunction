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
data modify storage gcs:db handlers append value {hid:9,name:"spawn",label:"Spawn'a Işınlan",description:"Dünya spawn noktasına ışınlanma",auth_level:1,enabled:1b,category:"teleport",command:"tp @s @e[type=marker,tag=spawn_point,limit=1]"}

# Handler 10: Item Temizle
data modify storage gcs:db handlers append value {hid:10,name:"clear_items",label:"Item Temizle",description:"Yerdeki itemleri temizler",auth_level:3,enabled:1b,category:"admin",command:"kill @e[type=item,distance=..100]"}

# Handler 11: God Mode
data modify storage gcs:db handlers append value {hid:11,name:"god",label:"God Mode",description:"Ölümsüzlük modunu aç/kapat",auth_level:3,enabled:1b,category:"ability",command:"function gcs:handlers/builtin/god_mode"}

# Handler 12: Speed
data modify storage gcs:db handlers append value {hid:12,name:"speed",label:"Hız Arttır",description:"Hareket hızını arttırır",auth_level:2,enabled:1b,category:"ability",command:"function gcs:handlers/builtin/speed_boost"}

# Handler 13: Gamemode Creative
data modify storage gcs:db handlers append value {hid:13,name:"gm",label:"Gamemode Creative",description:"Creative moda geç",auth_level:3,enabled:1b,category:"admin",command:"gamemode creative @s"}

# Handler 14: Süper Şifa (çoklu komut)
data modify storage gcs:db handlers append value {hid:14,name:"super_heal",label:"Süper Şifa",description:"Tam iyileşme + tüm debuffları temizle + buff paketi",auth_level:1,enabled:1b,category:"utility",commands:["effect give @s minecraft:instant_health 1 10 true","effect give @s minecraft:regeneration 15 3 false","effect give @s minecraft:saturation 1 10 true","effect give @s minecraft:absorption 120 3 false","effect give @s minecraft:resistance 30 0 false","effect clear @s poison","effect clear @s wither","effect clear @s hunger","effect clear @s weakness","effect clear @s nausea","particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.8 0.3 0.2 50 force","playsound minecraft:item.totem.use master @s ~ ~ ~ 0.8 1.2"]}

# Handler 15: Back
data modify storage gcs:db handlers append value {hid:15,name:"back",label:"Geri Dön",description:"Son TP öncesi konuma dön",auth_level:1,enabled:1b,category:"teleport",command:"function gcs:back/go"}

# Handler 16: Vanish
data modify storage gcs:db handlers append value {hid:16,name:"vanish",label:"Vanish",description:"Görünmezlik modunu aç/kapat",auth_level:3,enabled:1b,category:"ability",command:"function gcs:handlers/builtin_extra/vanish"}

# Handler 17: TP All
data modify storage gcs:db handlers append value {hid:17,name:"tpall",label:"Herkesi TP",description:"Tüm oyuncuları sana ışınlar",auth_level:3,enabled:1b,category:"admin",command:"function gcs:handlers/builtin_extra/tpall"}

# Handler 18: Başlangıç Kiti (çoklu komut)
data modify storage gcs:db handlers append value {hid:18,name:"kit",label:"Başlangıç Kiti",description:"Başlangıç ekipmanları ver",auth_level:2,enabled:1b,category:"utility",commands:["give @s minecraft:iron_sword 1","give @s minecraft:iron_pickaxe 1","give @s minecraft:iron_axe 1","give @s minecraft:iron_helmet 1","give @s minecraft:iron_chestplate 1","give @s minecraft:iron_leggings 1","give @s minecraft:iron_boots 1","give @s minecraft:cooked_beef 16","give @s minecraft:torch 32","give @s minecraft:golden_apple 2","playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 1.0"]}

# Handler 19: Nether Warp (çoklu komut)
data modify storage gcs:db handlers append value {hid:19,name:"nether",label:"Nether'a Git",description:"Konumu kaydedip Nether'a ışınla",auth_level:2,enabled:1b,category:"teleport",commands:["function gcs:back/save","execute in minecraft:the_nether run tp @s 0 64 0","playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.8"]}

# Metadata
execute store result storage gcs:db metadata.handler_count int 1 run data get storage gcs:db handlers
data modify storage gcs:db metadata.last_update set value "System Install v2"

tellraw @a [{"text":"[GCS] ","color":"gold"},{"text":"19 varsayılan handler yüklendi. Limit: 50.","color":"green"}]
