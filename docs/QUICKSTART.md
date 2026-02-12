# 🚀 GCS - Hızlı Başlangıç

## ⏱️ 5 Dakikada Başla

### 1️⃣ Kurulum (30 saniye)
```
1. Bu klasörü kopyala: saves/[DünyaAdı]/datapacks/
2. Minecraft'ı aç veya /reload yaz
3. [GCS] yüklendi mesajını gör
```

### 2️⃣ İlk Yetki (15 saniye)
```
/function gcs:admin/grant_auth {player:"SenınAdın",level:3}
```

### 3️⃣ Menüyü Aç (5 saniye)
```
/trigger gcs.ui
```

---

## 🎯 İlk Handler'ını Ekle

### Basit Örnek: Hızlı Şifa
```
/function gcs:admin/add_handler {
  name:"quick_heal",
  label:"Hızlı Şifa",
  description:"Anında canını doldur",
  command:"effect give @s instant_health 1 10",
  auth_level:1,
  category:"utility"
}
```

### Handler'ı Kullan
```
/trigger gcs.exec set 14
```
(ID numarası sistem tarafından verilir - menüde görürsün)

---

## 📋 Temel Komutlar

| Komut | Açıklama |
|-------|----------|
| `/trigger gcs.ui` | Ana menü |
| `/trigger gcs.exec set 1` | Yardım |
| `/trigger gcs.exec set 2` | Eve ışınlan |
| `/trigger gcs.exec set 3` | Şifa |

---

## 💡 İpuçları

✅ **Handler ID'leri** menüde gösterilir
✅ **Yetkiler:** 1=Kullanıcı, 2=Mod, 3=Admin  
✅ **Limit:** 13-19 handler arası
✅ **Kategoriler:** utility, teleport, ability, world, admin

---

## 🔥 Popüler Handler Örnekleri

### 1. Uçuş Modu
```
/function gcs:admin/add_handler {name:"fly",label:"Uç",description:"Uçuş modu",command:"ability @s mayfly true",auth_level:2,category:"ability"}
```

### 2. Gece Yap
```
/function gcs:admin/add_handler {name:"night",label:"Gece",description:"Zaman=Gece",command:"time set night",auth_level:2,category:"world"}
```

### 3. Hız Buff
```
/function gcs:admin/add_handler {name:"speed",label:"Hız",description:"5dk hız",command:"effect give @s speed 300 2",auth_level:1,category:"ability"}
```

---

## 📖 Detaylı Bilgi

README.md dosyasını oku! 📚

---

**Hazırsın! İyi eğlenceler! 🎮**
