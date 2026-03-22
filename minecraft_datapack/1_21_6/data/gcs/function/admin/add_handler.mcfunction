# /function gcs:admin/add_handler {name:"isim",label:"Ad",description:"Açık",auth_level:1,category:"utility",command:"say test"}
function gcs:admin/_add_handler_pre
$data modify storage gcs:db handlers append value {hid:0,name:"$(name)",label:"$(label)",description:"$(description)",auth_level:$(auth_level),enabled:1b,category:"$(category)",command:"$(command)"}
function gcs:admin/_add_handler_post
$tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"Eklendi: ","color":"green"},{"text":"$(name)","color":"yellow"}]
