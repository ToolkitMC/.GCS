# /function gcs:admin/add_multi_handler {name:"name",label:"Label",description:"Description",auth_level:2,category:"utility",commands:["command1","command2"]}
function gcs:admin/_add_handler_pre
$data modify storage gcs:db handlers append value {hid:0,name:"$(name)",label:"$(label)",description:"$(description)",auth_level:$(auth_level),enabled:1b,category:"$(category)",commands:$(commands)}
function gcs:admin/_add_multi_post
$tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"Added: ","color":"green"},{"text":"$(name)","color":"yellow"}]
