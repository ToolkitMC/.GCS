# Hedef oyuncuya yıldırım çak
# Çağrı: function gcs:handlers/builtin_extra/smite {target:"OyuncuAdi"}
$execute as $(target) at @s run summon minecraft:lightning_bolt ~ ~ ~
$tellraw @a [{"text":"[⚡] ","color":"yellow","bold":true},{"text":"$(target)","color":"red"},{"text":" yıldırıma çarptı!","color":"gray"}]
$playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1.0 1.0
