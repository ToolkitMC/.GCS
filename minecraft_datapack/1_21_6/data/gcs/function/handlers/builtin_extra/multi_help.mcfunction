# Information about the multi-command system
tellraw @s ""
tellraw @s [{"text":"═══ GCS Multi-Command System ═══","color":"gold","bold":true}]
tellraw @s [{"text":"  To add multiple commands to a handler:","color":"gray"}]
tellraw @s ""
tellraw @s [{"text":"  /function gcs:admin/add_multi_handler {","color":"yellow"}]
tellraw @s [{"text":"    name:\"name\",label:\"Label\",","color":"yellow"}]
tellraw @s [{"text":"    description:\"Aciklama\",","color":"yellow"}]
tellraw @s [{"text":"    auth_level:2, category:\"utility\",","color":"yellow"}]
tellraw @s [{"text":"    cmd1:\"command1\",","color":"yellow"}]
tellraw @s [{"text":"    cmd2:\"command2\",","color":"yellow"}]
tellraw @s [{"text":"    cmd3:\"command3\"","color":"yellow"}]
tellraw @s [{"text":"  }","color":"yellow"}]
tellraw @s ""
tellraw @s [{"text":"  Up to 8 commands supported (cmd1-cmd8).","color":"aqua"}]
tellraw @s [{"text":"  Empty cmd fields are skipped automatically.","color":"gray"}]
tellraw @s ""
tellraw @s [{"text":"  Waypoint: /function gcs:waypoint/save {name:\"evim\"}","color":"light_purple"}]
tellraw @s [{"text":"  Go back: /trigger gcs.exec set 15","color":"aqua"}]
tellraw @s ""
