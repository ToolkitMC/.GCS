# 📦 Örnek Handler Paketi

Bu dosyada kopyala-yapıştır yapabileceğiniz hazır handler'lar bulunur.

---

## 🏠 TELEPORT Kategorisi

### 1. Spawn Noktası
```
/function gcs:admin/add_handler {name:"spawn",label:"Spawn",description:"Dünya spawn noktasına git",command:"tp @s @e[type=marker,tag=spawn,limit=1]",auth_level:1,category:"teleport"}
```

### 2. Rastgele TP
```
/function gcs:admin/add_handler {name:"rtp",label:"Rastgele TP",description:"Rastgele konuma ışınlan",command:"spreadplayers ~ ~ 100 500 false @s",auth_level:2,category:"teleport"}
```

### 3. Son Ölüm Noktası
```
/function gcs:admin/add_handler {name:"back",label:"Geri Dön",description:"Son ölüm yerine dön",command:"tp @s @s[nbt={LastDeathLocation:{}}]",auth_level:1,category:"teleport"}
```

---

## ⚡ ABILITY Kategorisi

### 1. Görünmezlik
```
/function gcs:admin/add_handler {name:"invis",label:"Görünmez",description:"5dk görünmezlik",command:"effect give @s invisibility 300 0 true",auth_level:2,category:"ability"}
```

### 2. Gece Görüşü
```
/function gcs:admin/add_handler {name:"nightvision",label:"Gece Görüşü",description:"10dk gece görüşü",command:"effect give @s night_vision 600 0 true",auth_level:1,category:"ability"}
```

### 3. Su Altında Nefes
```
/function gcs:admin/add_handler {name:"waterbreath",label:"Su Nefesi",description:"10dk su altı nefes",command:"effect give @s water_breathing 600 0",auth_level:1,category:"ability"}
```

### 4. Ateş Direnci
```
/function gcs:admin/add_handler {name:"fireproof",label:"Ateş İmmün",description:"5dk ateş direnci",command:"effect give @s fire_resistance 300 0",auth_level:1,category:"ability"}
```

### 5. Slow Fall
```
/function gcs:admin/add_handler {name:"slowfall",label:"Yavaş Düşüş",description:"Yumuşak iniş",command:"effect give @s slow_falling 300 0",auth_level:1,category:"ability"}
```

---

## 🛠️ UTILITY Kategorisi

### 1. Envanter Temizle
```
/function gcs:admin/add_handler {name:"clear",label:"Temizle",description:"Envanteri temizle",command:"clear @s",auth_level:1,category:"utility"}
```

### 2. XP Ver
```
/function gcs:admin/add_handler {name:"xp",label:"XP Ver",description:"10 level ver",command:"xp add @s 10 levels",auth_level:2,category:"utility"}
```

### 3. Açlık Gider
```
/function gcs:admin/add_handler {name:"fullhunger",label:"Tok",description:"Açlık 0 yap",command:"effect give @s saturation 1 100 true",auth_level:1,category:"utility"}
```

### 4. Etrafı Aydınlat
```
/function gcs:admin/add_handler {name:"light",label:"Işık",description:"Geçici ışık kaynağı",command:"summon light_block ~ ~ ~ {BlockState:{level:\"15\"}}",auth_level:2,category:"utility"}
```

---

## 🌍 WORLD Kategorisi

### 1. Sabah Yap
```
/function gcs:admin/add_handler {name:"morning",label:"Sabah",description:"Zaman sabah",command:"time set 1000",auth_level:2,category:"world"}
```

### 2. Öğlen Yap
```
/function gcs:admin/add_handler {name:"noon",label:"Öğlen",description:"Zaman öğlen",command:"time set 6000",auth_level:2,category:"world"}
```

### 3. Gece Yarısı
```
/function gcs:admin/add_handler {name:"midnight",label:"Gece Yarısı",description:"Zaman gece yarısı",command:"time set 18000",auth_level:2,category:"world"}
```

### 4. Güneşli Hava
```
/function gcs:admin/add_handler {name:"sun",label:"Güneşli",description:"Hava açık",command:"weather clear 1000",auth_level:2,category:"world"}
```

### 5. Fırtına
```
/function gcs:admin/add_handler {name:"storm",label:"Fırtına",description:"Fırtına başlat",command:"weather thunder 1000",auth_level:2,category:"world"}
```

### 6. Difficulty Değiştir
```
/function gcs:admin/add_handler {name:"peaceful",label:"Barışçıl",description:"Difficulty peaceful",command:"difficulty peaceful",auth_level:3,category:"world"}
```

---

## 👑 ADMIN Kategorisi

### 1. Tüm Mobları Öldür
```
/function gcs:admin/add_handler {name:"killmobs",label:"Mob Temizle",description:"Tüm düşman mobları öldür",command:"kill @e[type=!player,type=!armor_stand,type=!item_frame]",auth_level:3,category:"admin"}
```

### 2. Creative Mode
```
/function gcs:admin/add_handler {name:"creative",label:"Creative",description:"Yaratıcı mod",command:"gamemode creative @s",auth_level:3,category:"admin"}
```

### 3. Survival Mode
```
/function gcs:admin/add_handler {name:"survival",label:"Survival",description:"Hayatta kalma modu",command:"gamemode survival @s",auth_level:3,category:"admin"}
```

### 4. Spectator Mode
```
/function gcs:admin/add_handler {name:"spectator",label:"İzleyici",description:"İzleyici modu",command:"gamemode spectator @s",auth_level:3,category:"admin"}
```

### 5. Keep Inventory Aç
```
/function gcs:admin/add_handler {name:"keepinv",label:"KeepInventory",description:"Ölümde envanter kaybolmasın",command:"gamerule keepInventory true",auth_level:3,category:"admin"}
```

---

## 🎁 ÖZEL / COMBO Handler'lar

### 1. Starter Kit
```
# Önce fonksiyon oluştur: data/custom/functions/starter_kit.mcfunction
clear @s
give @s iron_sword
give @s iron_pickaxe
give @s iron_axe
give @s iron_shovel
give @s bread 16
give @s torch 32
title @s title {"text":"Starter Kit!","color":"gold"}

# Handler ekle:
/function gcs:admin/add_handler {name:"starterkit",label:"Starter Kit",description:"Başlangıç ekipmanları",command:"function custom:starter_kit",auth_level:1,category:"utility"}
```

### 2. PvP Kit
```
# data/custom/functions/pvp_kit.mcfunction
clear @s
give @s diamond_sword{Enchantments:[{id:"sharpness",lvl:5}]}
give @s diamond_helmet{Enchantments:[{id:"protection",lvl:4}]}
give @s diamond_chestplate{Enchantments:[{id:"protection",lvl:4}]}
give @s diamond_leggings{Enchantments:[{id:"protection",lvl:4}]}
give @s diamond_boots{Enchantments:[{id:"protection",lvl:4}]}
give @s golden_apple 5
give @s arrow 64

# Handler:
/function gcs:admin/add_handler {name:"pvpkit",label:"PvP Kit",description:"PvP ekipmanları",command:"function custom:pvp_kit",auth_level:2,category:"utility"}
```

### 3. Builder Kit
```
# data/custom/functions/builder_kit.mcfunction
clear @s
give @s oak_planks 64
give @s stone 64
give @s glass 64
give @s oak_stairs 64
give @s oak_slab 64
give @s torch 64
title @s actionbar {"text":"🏗️ Builder Kit Verildi","color":"aqua"}

# Handler:
/function gcs:admin/add_handler {name:"builderkit",label:"Builder Kit",description:"İnşaat malzemeleri",command:"function custom:builder_kit",auth_level:1,category:"utility"}
```

### 4. Mega Buff
```
# data/custom/functions/mega_buff.mcfunction
effect give @s speed 600 2
effect give @s jump_boost 600 2
effect give @s night_vision 600 0
effect give @s water_breathing 600 0
effect give @s fire_resistance 600 0
effect give @s regeneration 600 1
title @s title {"text":"⚡ MEGA BUFF","color":"gold","bold":true}
playsound entity.player.levelup master @s ~ ~ ~ 1 1

# Handler:
/function gcs:admin/add_handler {name:"megabuff",label:"Mega Buff",description:"Tüm buff'lar 10dk",command:"function custom:mega_buff",auth_level:3,category:"ability"}
```

### 5. Emergency Heal
```
# data/custom/functions/emergency_heal.mcfunction
effect clear @s
effect give @s instant_health 1 10
effect give @s regeneration 30 4
effect give @s absorption 60 4
effect give @s resistance 30 2
tp @s ~ ~0.5 ~
title @s actionbar {"text":"🚑 ACİL YARDIM!","color":"red","bold":true}
playsound block.beacon.activate master @s ~ ~ ~ 1 2

# Handler:
/function gcs:admin/add_handler {name:"emergency",label:"Acil Yardım",description:"Kritik durum kurtarma",command:"function custom:emergency_heal",auth_level:1,category:"utility"}
```

---

## 📝 Kullanım Notları

1. **Custom fonksiyonlar için:**
   - `data/custom/functions/` klasörü oluştur
   - `.mcfunction` dosyalarını içine koy
   - Handler'da `function custom:dosya_adi` kullan

2. **Enchantment ID'leri:**
   - `sharpness`, `protection`, `efficiency`, `fortune`, vb.
   - Level: `lvl:1` ile `lvl:5` arası

3. **Effect ID'leri:**
   - `speed`, `jump_boost`, `night_vision`, vb.
   - Süre: saniye cinsinden
   - Seviye: 0'dan başlar (Level I = 0, Level II = 1)

4. **Gamemode'lar:**
   - `survival`, `creative`, `adventure`, `spectator`

---

## 🎯 Handler Ekleme Şablonu

```
/function gcs:admin/add_handler {
  name:"KOMUT_ADI",
  label:"Görünen Ad",
  description:"Ne yaptığını açıkla",
  command:"minecraft_komutu",
  auth_level:1-3,
  category:"utility|teleport|ability|world|admin"
}
```

---

**Hepsini ekledikten sonra:**
```
/function gcs:admin/list_handlers
```

**İyi eğlenceler! 🎮**
