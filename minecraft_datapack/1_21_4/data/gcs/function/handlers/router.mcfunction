# Handler ID'yi al
scoreboard players operation #handler_id gcs.hid = @s gcs.exec

# Bakım modu kontrolü
execute if data storage gcs:db metadata{maintenance:1b} run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Sistem bakım modunda!","color":"red"}]
execute if data storage gcs:db metadata{maintenance:1b} run return fail

# Handler'ı çalıştır - ID'ye göre route et
execute if score #handler_id gcs.hid matches 1 run function gcs:handlers/execute {hid:1}
execute if score #handler_id gcs.hid matches 2 run function gcs:handlers/execute {hid:2}
execute if score #handler_id gcs.hid matches 3 run function gcs:handlers/execute {hid:3}
execute if score #handler_id gcs.hid matches 4 run function gcs:handlers/execute {hid:4}
execute if score #handler_id gcs.hid matches 5 run function gcs:handlers/execute {hid:5}
execute if score #handler_id gcs.hid matches 6 run function gcs:handlers/execute {hid:6}
execute if score #handler_id gcs.hid matches 7 run function gcs:handlers/execute {hid:7}
execute if score #handler_id gcs.hid matches 8 run function gcs:handlers/execute {hid:8}
execute if score #handler_id gcs.hid matches 9 run function gcs:handlers/execute {hid:9}
execute if score #handler_id gcs.hid matches 10 run function gcs:handlers/execute {hid:10}
execute if score #handler_id gcs.hid matches 11 run function gcs:handlers/execute {hid:11}
execute if score #handler_id gcs.hid matches 12 run function gcs:handlers/execute {hid:12}
execute if score #handler_id gcs.hid matches 13 run function gcs:handlers/execute {hid:13}
execute if score #handler_id gcs.hid matches 14 run function gcs:handlers/execute {hid:14}
execute if score #handler_id gcs.hid matches 15 run function gcs:handlers/execute {hid:15}
execute if score #handler_id gcs.hid matches 16 run function gcs:handlers/execute {hid:16}
execute if score #handler_id gcs.hid matches 17 run function gcs:handlers/execute {hid:17}
execute if score #handler_id gcs.hid matches 18 run function gcs:handlers/execute {hid:18}
execute if score #handler_id gcs.hid matches 19 run function gcs:handlers/execute {hid:19}
