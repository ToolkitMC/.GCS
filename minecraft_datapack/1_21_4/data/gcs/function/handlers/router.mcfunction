# Handler ID'yi al
scoreboard players operation #handler_id gcs.hid = @s gcs.exec

# Bakım modu kontrolü
execute if data storage gcs:db metadata{maintenance:1b} run tellraw @s [{"text":"[!] ","color":"red","bold":true},{"text":"Sistem bakım modunda!","color":"red"}]
execute if data storage gcs:db metadata{maintenance:1b} run return fail

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
execute if score #handler_id gcs.hid matches 20 run function gcs:handlers/execute {hid:20}
execute if score #handler_id gcs.hid matches 21 run function gcs:handlers/execute {hid:21}
execute if score #handler_id gcs.hid matches 22 run function gcs:handlers/execute {hid:22}
execute if score #handler_id gcs.hid matches 23 run function gcs:handlers/execute {hid:23}
execute if score #handler_id gcs.hid matches 24 run function gcs:handlers/execute {hid:24}
execute if score #handler_id gcs.hid matches 25 run function gcs:handlers/execute {hid:25}
execute if score #handler_id gcs.hid matches 26 run function gcs:handlers/execute {hid:26}
execute if score #handler_id gcs.hid matches 27 run function gcs:handlers/execute {hid:27}
execute if score #handler_id gcs.hid matches 28 run function gcs:handlers/execute {hid:28}
execute if score #handler_id gcs.hid matches 29 run function gcs:handlers/execute {hid:29}
execute if score #handler_id gcs.hid matches 30 run function gcs:handlers/execute {hid:30}
execute if score #handler_id gcs.hid matches 31 run function gcs:handlers/execute {hid:31}
execute if score #handler_id gcs.hid matches 32 run function gcs:handlers/execute {hid:32}
execute if score #handler_id gcs.hid matches 33 run function gcs:handlers/execute {hid:33}
execute if score #handler_id gcs.hid matches 34 run function gcs:handlers/execute {hid:34}
execute if score #handler_id gcs.hid matches 35 run function gcs:handlers/execute {hid:35}
execute if score #handler_id gcs.hid matches 36 run function gcs:handlers/execute {hid:36}
execute if score #handler_id gcs.hid matches 37 run function gcs:handlers/execute {hid:37}
execute if score #handler_id gcs.hid matches 38 run function gcs:handlers/execute {hid:38}
execute if score #handler_id gcs.hid matches 39 run function gcs:handlers/execute {hid:39}
execute if score #handler_id gcs.hid matches 40 run function gcs:handlers/execute {hid:40}
execute if score #handler_id gcs.hid matches 41 run function gcs:handlers/execute {hid:41}
execute if score #handler_id gcs.hid matches 42 run function gcs:handlers/execute {hid:42}
execute if score #handler_id gcs.hid matches 43 run function gcs:handlers/execute {hid:43}
execute if score #handler_id gcs.hid matches 44 run function gcs:handlers/execute {hid:44}
execute if score #handler_id gcs.hid matches 45 run function gcs:handlers/execute {hid:45}
execute if score #handler_id gcs.hid matches 46 run function gcs:handlers/execute {hid:46}
execute if score #handler_id gcs.hid matches 47 run function gcs:handlers/execute {hid:47}
execute if score #handler_id gcs.hid matches 48 run function gcs:handlers/execute {hid:48}
execute if score #handler_id gcs.hid matches 49 run function gcs:handlers/execute {hid:49}
execute if score #handler_id gcs.hid matches 50 run function gcs:handlers/execute {hid:50}
