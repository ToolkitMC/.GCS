# Her tick azalt, biten cooldown'ları temizle
# Bu fonksiyon core/tick.mcfunction'dan her tick çağrılır
# Basit yaklaşım: ticks > 0 ise azalt, 0 olunca sil
# (MC storage üzerinde döngüsel azaltma tek seferde mümkün değil,
#  bu yüzden scoreboard bazlı hafif bir yaklaşım kullanıyoruz)
# -- Gelecekte NBT tabanlı genişletilebilir --
