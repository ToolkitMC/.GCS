# Performance monitor
execute store result score #handler_count gcs.perf run data get storage gcs:db handlers
execute store result score #active_count gcs.perf if data storage gcs:db handlers[{enabled:1b}]

# Show performance stats
tellraw @s ""
tellraw @s [{"text":"[⚡] ","color":"yellow","bold":true},{"text":"Performance Report","color":"gold"}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Total Handlers: ","color":"gray"},{"score":{"name":"#handler_count","objective":"gcs.perf"},"color":"white"}]
tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Active Handlers: ","color":"gray"},{"score":{"name":"#active_count","objective":"gcs.perf"},"color":"green"}]
execute store result score #inactive_count gcs.perf run scoreboard players operation #handler_count gcs.perf -= #active_count gcs.perf
tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Inactive Handler: ","color":"gray"},{"score":{"name":"#handler_count","objective":"gcs.perf"},"color":"red"}]
tellraw @s ""
