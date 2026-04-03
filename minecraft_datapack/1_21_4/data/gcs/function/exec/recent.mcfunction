execute unless score @s gcs.auth matches 1.. run return fail

# If empty, show notice dialog
execute unless data storage gcs:db recent run dialog show @s {type:"minecraft:notice",title:[{"text":"🕐 Recently Executed","color":"aqua","bold":true}],body:{type:"minecraft:plain_message",contents:{"text":"No commands executed yet.","color":"gray","italic":true}},can_close_with_escape:1b,pause:0b,ok:{label:{"text":"◀ Back","color":"gray"},action:{type:"minecraft:run_command",command:"/function gcs:exec/menu"}}}
execute unless data storage gcs:db recent run return 0

data modify storage gcs:temp exec_dialog set value {type:"minecraft:multi_action",title:[{"text":"🕐 Recently Executed","color":"aqua","bold":true}],body:{type:"minecraft:plain_message",contents:{"text":"Your most recently executed commands:","color":"gray"}},can_close_with_escape:1b,pause:0b,columns:2,button_width:150,exit_action:{label:{"text":"◀ Back","color":"gray"},action:{type:"minecraft:run_command",command:"/function gcs:exec/menu"}},actions:[]}

function gcs:exec/_add_recent {idx:0}
function gcs:exec/_add_recent {idx:1}
function gcs:exec/_add_recent {idx:2}
function gcs:exec/_add_recent {idx:3}
function gcs:exec/_add_recent {idx:4}

function gcs:exec/_show with storage gcs:temp
data remove storage gcs:temp exec_dialog
data remove storage gcs:temp exec_h
