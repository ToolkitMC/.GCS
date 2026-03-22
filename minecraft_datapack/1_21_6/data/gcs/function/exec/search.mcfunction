execute unless score @s gcs.auth matches 1.. run return fail

$data modify storage gcs:temp exec_dialog set value {type:"minecraft:multi_action",title:[{"text":"🔍 Arama: ","color":"aqua","bold":true},{"text":"$(query)","color":"yellow"}],body:{type:"minecraft:plain_message",contents:{"text":"Eşleşen komutlar:","color":"gray"}},can_close_with_escape:1b,pause:0b,columns:2,button_width:150,exit_action:{label:{"text":"◀ Geri","color":"gray"},action:{type:"minecraft:run_command",command:"/function gcs:exec/menu"}},actions:[]}

$function gcs:exec/_try_add_search {idx:0,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:1,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:2,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:3,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:4,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:5,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:6,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:7,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:8,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:9,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:10,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:11,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:12,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:13,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:14,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:15,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:16,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:17,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:18,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:19,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:20,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:21,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:22,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:23,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:24,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:25,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:26,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:27,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:28,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:29,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:30,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:31,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:32,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:33,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:34,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:35,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:36,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:37,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:38,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:39,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:40,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:41,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:42,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:43,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:44,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:45,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:46,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:47,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:48,query:"$(query)"}
$function gcs:exec/_try_add_search {idx:49,query:"$(query)"}

function gcs:exec/_show with storage gcs:temp
data remove storage gcs:temp exec_dialog
data remove storage gcs:temp exec_h
