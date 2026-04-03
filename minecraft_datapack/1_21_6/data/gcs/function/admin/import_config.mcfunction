# ============================================
# GCS - Configuration Import
# Auth Level: 3 (Admin)
# ============================================

# Permission check
execute unless score @s gcs.auth matches 3.. run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"To use this command, ","color":"red"},{"text":"Admin (Level 3)","color":"red","bold":true},{"text":" permission is required!","color":"red"}]
execute unless score @s gcs.auth matches 3.. run return 0

# Open import dialog
dialog show @s {type:"minecraft:notice",title:[{"text":"📥 Import Config","color":"gold","bold":true}],body:{type:"minecraft:plain_message",contents:"To import handler data:\n\n§71. View current data: /data get storage gcs:db\n§72. Run this command in console:\n§a/data modify storage gcs:db handlers set value [JSON_HERE]"},can_close_with_escape:1b,pause:0b,ok:{label:"OK"}}
