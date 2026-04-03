# XP ver — miktar NBT'den gelir
# Çağrı: function gcs:handlers/builtin_extra/give_xp {amount:100}
$experience add @s $(amount) levels
$tellraw @s [{"text":"[✨] ","color":"yellow","bold":true},{"text":"$(amount) seviye XP eklendi!","color":"green"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1.0 1.2
