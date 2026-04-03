# Usage: function gcs:handlers/builtin_extra/broadcast {msg:"Your message"}
$tellraw @a [{"text":"[📢] ","color":"gold","bold":true},{"text":"$(msg)","color":"white"}]
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1.0 1.0
