execute unless score @s gcs.auth matches 1.. run return fail

data modify storage gcs:temp exec_dialog set value {type:"minecraft:multi_action",title:[{"text":"📋 Tüm Komutlar","color":"yellow","bold":true}],body:{type:"minecraft:plain_message",contents:{"text":"Çalıştırmak istediğin komutu seç:","color":"gray"}},can_close_with_escape:1b,pause:0b,columns:2,button_width:150,exit_action:{label:{"text":"◀ Geri","color":"gray"},action:{type:"minecraft:run_command",command:"/function gcs:exec/menu"}},actions:[]}

function gcs:exec/_try_add_all {idx:0}
function gcs:exec/_try_add_all {idx:1}
function gcs:exec/_try_add_all {idx:2}
function gcs:exec/_try_add_all {idx:3}
function gcs:exec/_try_add_all {idx:4}
function gcs:exec/_try_add_all {idx:5}
function gcs:exec/_try_add_all {idx:6}
function gcs:exec/_try_add_all {idx:7}
function gcs:exec/_try_add_all {idx:8}
function gcs:exec/_try_add_all {idx:9}
function gcs:exec/_try_add_all {idx:10}
function gcs:exec/_try_add_all {idx:11}
function gcs:exec/_try_add_all {idx:12}
function gcs:exec/_try_add_all {idx:13}
function gcs:exec/_try_add_all {idx:14}
function gcs:exec/_try_add_all {idx:15}
function gcs:exec/_try_add_all {idx:16}
function gcs:exec/_try_add_all {idx:17}
function gcs:exec/_try_add_all {idx:18}
function gcs:exec/_try_add_all {idx:19}
function gcs:exec/_try_add_all {idx:20}
function gcs:exec/_try_add_all {idx:21}
function gcs:exec/_try_add_all {idx:22}
function gcs:exec/_try_add_all {idx:23}
function gcs:exec/_try_add_all {idx:24}
function gcs:exec/_try_add_all {idx:25}
function gcs:exec/_try_add_all {idx:26}
function gcs:exec/_try_add_all {idx:27}
function gcs:exec/_try_add_all {idx:28}
function gcs:exec/_try_add_all {idx:29}
function gcs:exec/_try_add_all {idx:30}
function gcs:exec/_try_add_all {idx:31}
function gcs:exec/_try_add_all {idx:32}
function gcs:exec/_try_add_all {idx:33}
function gcs:exec/_try_add_all {idx:34}
function gcs:exec/_try_add_all {idx:35}
function gcs:exec/_try_add_all {idx:36}
function gcs:exec/_try_add_all {idx:37}
function gcs:exec/_try_add_all {idx:38}
function gcs:exec/_try_add_all {idx:39}
function gcs:exec/_try_add_all {idx:40}
function gcs:exec/_try_add_all {idx:41}
function gcs:exec/_try_add_all {idx:42}
function gcs:exec/_try_add_all {idx:43}
function gcs:exec/_try_add_all {idx:44}
function gcs:exec/_try_add_all {idx:45}
function gcs:exec/_try_add_all {idx:46}
function gcs:exec/_try_add_all {idx:47}
function gcs:exec/_try_add_all {idx:48}
function gcs:exec/_try_add_all {idx:49}

function gcs:exec/_show with storage gcs:temp
data remove storage gcs:temp exec_dialog
data remove storage gcs:temp exec_h
