execute unless score @s gcs.auth matches 1.. run return fail

data modify storage gcs:temp exec_dialog set value {type:"minecraft:multi_action",title:[{"text":"🔍 Arama Sonuçları","color":"aqua","bold":true}],body:{type:"minecraft:plain_message",contents:"Eşleşen komutlar:"},can_close_with_escape:1b,pause:0b,columns:2,exit_action:{label:"◀ Geri",action:{type:"minecraft:run_command",command:"/function gcs:exec/menu"}},actions:[]}

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

function gcs:exec/_show with storage gcs:temp
