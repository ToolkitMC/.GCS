execute unless score @s gcs.auth matches 1.. run return fail

data modify storage gcs:temp exec_dialog set value {type:"minecraft:multi_action",title:[{"text":"📋 Tüm Komutlar","color":"yellow","bold":true}],body:{type:"minecraft:plain_message",contents:"Çalıştırmak istediğin komutu seç:"},can_close_with_escape:1b,pause:0b,columns:2,exit_action:{label:"◀ Geri",action:{type:"minecraft:run_command",command:"/function gcs:exec/menu"}},actions:[]}

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

function gcs:exec/_show with storage gcs:temp
