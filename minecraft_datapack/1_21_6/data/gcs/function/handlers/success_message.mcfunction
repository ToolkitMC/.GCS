# Başarılı komut mesajı + efektler
$tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"$(label)","color":"yellow"},{"text":" çalıştırıldı!","color":"green"}]

# Görsel ve ses efektleri
particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.5 0.3 0.1 15 force
particle minecraft:happy_villager ~ ~0.5 ~ 0.5 0.5 0.5 0 8 force
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.2
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.3 1.5
