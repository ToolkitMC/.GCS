# Give XP levels
# Call: function gcs:handlers/builtin_extra/give_xp {amount:10}
$experience add @s $(amount) levels
$tellraw @s [{"text":"[XP] ","color":"yellow","bold":true},{"text":"$(amount) levels added!","color":"green"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1.0 1.2
