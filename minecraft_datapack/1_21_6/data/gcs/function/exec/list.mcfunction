execute unless score @s gcs.auth matches 1.. run return fail

$data modify storage gcs:temp exec_dialog set value {type:"minecraft:multi_action",title:[{"text":"⚡ ","color":"yellow"},{"text":"$(category)","color":"yellow","bold":true}],body:{type:"minecraft:plain_message",contents:"Çalıştırmak istediğin komutu seç:"},can_close_with_escape:1b,pause:0b,columns:2,exit_action:{label:"◀ Geri",action:{type:"minecraft:run_command",command:"/function gcs:exec/menu"}},actions:[]}

$function gcs:exec/_try_add {idx:0,category:"$(category)"}
$function gcs:exec/_try_add {idx:1,category:"$(category)"}
$function gcs:exec/_try_add {idx:2,category:"$(category)"}
$function gcs:exec/_try_add {idx:3,category:"$(category)"}
$function gcs:exec/_try_add {idx:4,category:"$(category)"}
$function gcs:exec/_try_add {idx:5,category:"$(category)"}
$function gcs:exec/_try_add {idx:6,category:"$(category)"}
$function gcs:exec/_try_add {idx:7,category:"$(category)"}
$function gcs:exec/_try_add {idx:8,category:"$(category)"}
$function gcs:exec/_try_add {idx:9,category:"$(category)"}
$function gcs:exec/_try_add {idx:10,category:"$(category)"}
$function gcs:exec/_try_add {idx:11,category:"$(category)"}
$function gcs:exec/_try_add {idx:12,category:"$(category)"}
$function gcs:exec/_try_add {idx:13,category:"$(category)"}
$function gcs:exec/_try_add {idx:14,category:"$(category)"}
$function gcs:exec/_try_add {idx:15,category:"$(category)"}
$function gcs:exec/_try_add {idx:16,category:"$(category)"}
$function gcs:exec/_try_add {idx:17,category:"$(category)"}
$function gcs:exec/_try_add {idx:18,category:"$(category)"}

function gcs:exec/_show with storage gcs:temp
