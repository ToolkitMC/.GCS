# 🎮 Global Command System (GCS) v1.0

## 📋 Genel Bakış

**Global Command System**, Minecraft dünyalarınız için güçlü, modüler ve güvenli bir komut yönetim sistemidir. 
13-19 işleyici (handler) sınırı ile optimize edilmiş, profesyonel bir datapack çözümüdür.

### ✨ Özellikler

- ✅ **Dinamik Handler Yönetimi**: Komutları runtime'da ekle, sil, düzenle
- ✅ **Yetkilendirme Sistemi**: 3 seviyeli güvenlik (Kullanıcı/Moderatör/Admin)
- ✅ **Handler Limiti**: Minimum 13, Maximum 19 handler
- ✅ **Kategori Sistemi**: Utility, Teleport, Ability, World, Admin
- ✅ **Macro Desteği**: Parametreli komutlar
- ✅ **Bakım Modu**: Sistem bakımı için özel mod
- ✅ **Export/Import**: Handler'ları yedekle ve aktar
- ✅ **Interactive UI**: Tıklanabilir menüler

---

## 📦 Kurulum

### Adım 1: Datapack'i Yerleştir
```
saves/[Dünya_Adı]/datapacks/global_command_system/
```

### Adım 2: Dünyayı Yükle
Minecraft'ta dünyayı aç veya `/reload` komutunu kullan.

### Adım 3: İlk Yetkilendirme
OP olarak şu komutu çalıştır:
```
/function gcs:admin/grant_auth {player:"OyuncuAdın",level:3}
```

### Adım 4: Sistemi Test Et
```
/trigger gcs.ui
```

---

## 🎯 Kullanım

### Ana Menüye Erişim
```
/trigger gcs.ui
```

### Handler Çalıştırma
```
/trigger gcs.exec set <HANDLER_ID>
```

Örnek:
```
/trigger gcs.exec set 1  # Yardım menüsünü aç
/trigger gcs.exec set 2  # Eve ışınlan
/trigger gcs.exec set 3  # Şifa
```

---

## 🛠️ Handler Yönetimi

### ➕ Yeni Handler Ekle

**Sözdizimi:**
```
/function gcs:admin/add_handler {
  name:"komut_adi",
  label:"Görünen Ad",
  description:"Açıklama",
  command:"minecraft_komutu",
  auth_level:1-3,
  category:"utility|teleport|ability|world|admin"
}
```

**Örnekler:**

**1. Basit TP Komutu:**
```
/function gcs:admin/add_handler {
  name:"spawn",
  label:"Spawn'a Git",
  description:"Spawn noktasına ışınlanır",
  command:"tp @s 0 64 0",
  auth_level:1,
  category:"teleport"
}
```

**2. Effect Verme:**
```
/function gcs:admin/add_handler {
  name:"jump",
  label:"Zıplama Gücü",
  description:"5 dakika zıplama efekti",
  command:"effect give @s jump_boost 300 2",
  auth_level:2,
  category:"ability"
}
```

**3. Dünya Komutu:**
```
/function gcs:admin/add_handler {
  name:"rain",
  label:"Yağmur Başlat",
  description:"Hava durumunu yağmurlu yapar",
  command:"weather rain",
  auth_level:2,
  category:"world"
}
```

**4. Multi-Command (Function):**
```
# Önce bir fonksiyon oluştur: custom_commands/super_heal.mcfunction
effect give @s instant_health 1 10
effect give @s regeneration 30 2
effect give @s absorption 60 4
playsound entity.player.levelup master @s ~ ~ ~ 1 1

# Sonra handler ekle:
/function gcs:admin/add_handler {
  name:"super_heal",
  label:"Süper Şifa",
  description:"Tam şifa + buff'lar",
  command:"function custom_commands:super_heal",
  auth_level:2,
  category:"utility"
}
```

### ✏️ Handler Düzenle

```
/function gcs:admin/edit_handler {
  hid:5,
  name:"yeni_isim",
  label:"Yeni Etiket",
  description:"Yeni açıklama",
  command:"say güncellendi",
  auth_level:2,
  category:"utility"
}
```

### ❌ Handler Sil

```
/function gcs:admin/delete_handler {hid:5}
```

**⚠️ NOT:** Minimum 13 handler korunur, altına düşemezsiniz!

### 🔄 Handler Aktif/Pasif

```
/function gcs:admin/toggle_handler {hid:5}
```

---

## 👥 Yetkilendirme

### Yetki Seviyeleri

| Seviye | Rol | Açıklama |
|--------|-----|----------|
| **1** | 👤 Kullanıcı | Temel komutlar (tp, heal, feed) |
| **2** | ⚡ Moderatör | Dünya komutları (time, weather, fly) |
| **3** | 👑 Admin | Tüm komutlar + sistem yönetimi |

### Yetki Verme

```
/function gcs:admin/grant_auth {player:"OyuncuAdı",level:1}
/function gcs:admin/grant_auth {player:"Moderator1",level:2}
/function gcs:admin/grant_auth {player:"Admin1",level:3}
```

### Yetkili Listesi

```
/function gcs:admin/list_auth
```

---

## 📊 Sistem İstatistikleri

### Hızlı İstatistikler
Ana menüde otomatik gösterilir.

### Detaylı İstatistikler
```
/function gcs:admin/detailed_stats
```

Gösterilenler:
- Handler sayısı (aktif/pasif)
- Boş slot sayısı
- Kategori dağılımı
- Yetki dağılımı
- Sistem durumu

---

## 🔍 Handler Arama ve Listeleme

### Tüm Handler'ları Listele
```
/function gcs:admin/list_handlers
```

Kategorilere göre gruplandırılmış liste gösterir.

### Handler Ara
```
/function gcs:admin/search_handler {query:"arama_kelimesi"}
```

---

## 💾 Yedekleme ve Export

### Storage'ı Görüntüle
```
/data get storage gcs:db
```

### Handler'ları Export Et
```
/data get storage gcs:db handlers
```

### Yedekleme Kılavuzu

1. Export komutunu çalıştır
2. Chat'ten JSON çıktısını kopyala
3. Bir text dosyasına yapıştır
4. Başka bir dünyada import etmek için:
   ```
   /data modify storage gcs:db handlers set value [KOPYALADIĞIN_JSON]
   ```

---

## 🔧 Bakım Modu

### Bakım Modunu Aç/Kapat
```
/function gcs:admin/maintenance
```

Bakım modunda:
- Handler'lar çalıştırılamaz
- Sadece admin paneli erişilebilir
- Güvenli güncelleme yapılabilir

---

## 📝 Kategori Sistemi

### Mevcut Kategoriler

**🛠️ utility**
- Genel yardımcı komutlar
- Heal, feed, help vb.

**🚀 teleport**
- Işınlanma komutları
- Home, spawn, waypoint vb.

**⚡ ability**
- Özel yetenekler
- Fly, speed, jump, god mode vb.

**🌍 world**
- Dünya yönetimi
- Time, weather, gamerule vb.

**👑 admin**
- Yönetici komutları
- Clear items, gamemode, kick vb.

---

## 🎨 İleri Seviye Örnekler

### Örnek 1: Parametreli Teleport
```
# Custom TP fonksiyonu oluştur
data/custom/functions/tp_coords.mcfunction:
$tp @s $(x) $(y) $(z)
say $(x), $(y), $(z) koordinatlarına ışınlandınız!

# Handler ekle:
/function gcs:admin/add_handler {
  name:"goto",
  label:"Koordinata Git",
  description:"Belirli koordinata ışınlanma",
  command:"function custom:tp_coords {x:100,y:64,z:200}",
  auth_level:2,
  category:"teleport"
}
```

### Örnek 2: Özel Efekt Kombinasyonu
```
# custom/super_buff.mcfunction
effect give @s speed 300 2
effect give @s jump_boost 300 2
effect give @s night_vision 300 0
effect give @s water_breathing 300 0
title @s actionbar {"text":"⚡ Super Buff Aktif!","color":"gold"}

# Handler:
/function gcs:admin/add_handler {
  name:"super_buff",
  label:"Süper Buff",
  description:"Çoklu efekt paketi",
  command:"function custom:super_buff",
  auth_level:2,
  category:"ability"
}
```

### Örnek 3: Otomatik Kit Verme
```
# custom/starter_kit.mcfunction
clear @s
give @s diamond_sword{Enchantments:[{id:"sharpness",lvl:5}]} 1
give @s diamond_pickaxe{Enchantments:[{id:"efficiency",lvl:5}]} 1
give @s golden_apple 16
give @s bread 32
title @s title {"text":"Başlangıç Kiti!","color":"gold"}

# Handler:
/function gcs:admin/add_handler {
  name:"kit",
  label:"Starter Kit",
  description:"Başlangıç ekipmanları verir",
  command:"function custom:starter_kit",
  auth_level:1,
  category:"utility"
}
```

---

## 🚨 Sistem Sınırlamaları

### Handler Limiti
- **Minimum:** 13 handler (silinmeye karşı korunur)
- **Maximum:** 19 handler (eklemeye izin verilmez)

### Neden Bu Limitler?

1. **Performans**: Çok fazla handler sistem yavaşlamasına neden olabilir
2. **Yönetilebilirlik**: 13-19 arası optimal kullanım sağlar
3. **Modülerlik**: Her handler'ın amacı net olmalı

### Limit Kontrolü
Sistem otomatik olarak:
- ✅ 19 handler'a ulaşıldığında eklemeyi engeller
- ✅ 13 handler'ın altına düşmeyi engeller
- ✅ Her işlemde slot durumunu gösterir

---

## 🔄 Sistem Güncellemeleri

### Reload
```
/reload
```

### Full Reset (TEHLİKELİ!)
```
/function gcs:utils/reset
```
**⚠️ UYARI:** Tüm handler'lar ve ayarlar silinir!

---

## 🐛 Sorun Giderme

### Handler Çalışmıyor
1. Yetkini kontrol et: `/scoreboard players get @s gcs.auth`
2. Handler aktif mi: `/function gcs:admin/list_handlers`
3. Bakım modu açık mı: Ana menüyü kontrol et

### Handler Eklenmiyor
1. Limit kontrolü: 19/19 mı?
2. Syntax doğru mu?
3. Tırnakları kontrol et: `"metin"`

### Yetki Çalışmıyor
1. Oyuncu çevrimiçi mi?
2. İsim doğru mu? (Büyük/küçük harf duyarlı)
3. Reload gerekli olabilir

---

## 📚 Komut Referansı

### Admin Komutları
```
/function gcs:admin/main_menu              # Ana menü
/function gcs:admin/add_handler {...}      # Handler ekle
/function gcs:admin/edit_handler {...}     # Handler düzenle
/function gcs:admin/delete_handler {...}   # Handler sil
/function gcs:admin/toggle_handler {...}   # Handler aç/kapat
/function gcs:admin/list_handlers          # Handler listesi
/function gcs:admin/search_handler {...}   # Handler ara
/function gcs:admin/grant_auth {...}       # Yetki ver
/function gcs:admin/list_auth              # Yetki listesi
/function gcs:admin/detailed_stats         # İstatistikler
/function gcs:admin/export                 # Export
/function gcs:admin/maintenance            # Bakım modu
```

### Kullanıcı Komutları
```
/trigger gcs.ui                           # Menü
/trigger gcs.exec set <ID>                # Handler çalıştır
```

### Sistem Komutları
```
/function gcs:utils/reset                 # Sistem reset
/data get storage gcs:db                  # Veri görüntüle
```

---

## 🎓 En İyi Pratikler

### 1. Handler İsimlendirme
- ✅ Kısa ve açıklayıcı: `heal`, `home`, `fly`
- ❌ Uzun ve karmaşık: `healing_spell_level_1`

### 2. Kategori Kullanımı
- Her handler doğru kategoriye ait olmalı
- Yeni kategoriler eklemek yerine mevcut olanları kullan

### 3. Yetki Seviyeleri
- Level 1: Günlük kullanım
- Level 2: Etkileyici komutlar
- Level 3: Tehlikeli/güçlü komutlar

### 4. Komut Güvenliği
- Asla `/op` verme komutu ekleme
- `/kill @e` gibi yıkıcı komutları dikkatli kullan
- Test ortamında dene

### 5. Dokümantasyon
- Description alanını doldur
- Açıklayıcı etiketler kullan
- Yorum satırları ekle

---

## 📖 Sık Sorulan Sorular

### S: Neden 19 handler limiti var?
**C:** Performans ve yönetilebilirlik için optimal sayıdır. Daha fazlası sistemi yavaşlatabilir.

### S: Minimum neden 13?
**C:** Temel işlevsellik için gerekli handler sayısıdır. Sistem her zaman kullanılabilir kalmalı.

### S: Handler'ları nasıl başka dünyaya taşırım?
**C:** `/data get storage gcs:db handlers` ile export et, yeni dünyada import et.

### S: Macro parametreleri nasıl kullanırım?
**C:** Komut içinde `$(parametre_adi)` kullan, çağırırken değer ver.

### S: Birden fazla komutu bir handler'da çalıştırabilir miyim?
**C:** Evet! Ayrı bir `.mcfunction` dosyası oluştur ve onu çağır.

---

## 🤝 Katkıda Bulunma

Bu bir açık kaynak projedir. İyileştirmeler için:
1. Handler örnekleri ekleyin
2. Bug raporları gönderin
3. Özellik önerileri yapın

---

## 📄 Lisans

MIT License - Özgürce kullanın, değiştirin, dağıtın!

---

## 🎉 Teşekkürler

GCS kullandığınız için teşekkürler! 

**İyi oyunlar!** 🎮

---

## 📞 Destek

- Sorunlarınız mı var? `/function gcs:handlers/builtin/help`
- GitHub: (Proje linkini ekleyin)
- Discord: (Community linkini ekleyin)

---

**Versiyon:** 1.0  
**Son Güncelleme:** 2026  
**Minecraft Sürümü:** 1.21+

═══════════════════════════════════════


## 🆕 Yeni Özellikler (v1.0 Enhanced)

### Doğrulama Sistemi
- Handler doğrulama
- Yetki kontrolü
- Hata yakalama

### Yedekleme Sistemi
- Otomatik yedekleme
- Geri yükleme
- Zaman damgası

### Performans İzleme
- Aktif/pasif handler takibi
- Performans raporları
- Kaynak kullanımı

### Gelişmiş Hata Yönetimi
- Detaylı hata mesajları
- Kullanıcı dostu bildirimler
- Otomatik düzeltme önerileri

### Toplu İşlemler
- Toplu aktif/pasif etme
- Yapılandırma içe/dışa aktarma
- Kategori bazlı işlemler

## 📜 Lisans

MIT License - Detaylar için [LICENSE](LICENSE) dosyasına bakın.

