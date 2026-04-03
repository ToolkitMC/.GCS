# Strike a target player with lightning
# Call: function gcs:handlers/builtin_extra/smite {target:"PlayerName"}
$execute as $(target) at @s run summon minecraft:lightning_bolt ~ ~ ~
$tellraw @a [{"text":"[Smite] ","color":"yellow","bold":true},{"text":"$(target)","color":"red"},{"text":" was struck by lightning!","color":"gray"}]
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1.0 1.0
