# Çoklu komut sistemi hakkında bilgi
tellraw @s ""
tellraw @s [{"text":"═══ GCS Çoklu Komut Sistemi ═══","color":"gold","bold":true}]
tellraw @s [{"text":"  Bir handler'a birden fazla komut eklemek için:","color":"gray"}]
tellraw @s ""
tellraw @s [{"text":"  /function gcs:admin/add_multi_handler {","color":"yellow"}]
tellraw @s [{"text":"    name:\"isim\",label:\"Etiket\",","color":"yellow"}]
tellraw @s [{"text":"    description:\"Aciklama\",","color":"yellow"}]
tellraw @s [{"text":"    auth_level:2, category:\"utility\",","color":"yellow"}]
tellraw @s [{"text":"    cmd1:\"komut1\",","color":"yellow"}]
tellraw @s [{"text":"    cmd2:\"komut2\",","color":"yellow"}]
tellraw @s [{"text":"    cmd3:\"komut3\"","color":"yellow"}]
tellraw @s [{"text":"  }","color":"yellow"}]
tellraw @s ""
tellraw @s [{"text":"  cmd1-cmd8 arasında max 8 komut desteklenir.","color":"aqua"}]
tellraw @s [{"text":"  Bos cmd alanları otomatik atlanır.","color":"gray"}]
tellraw @s ""
tellraw @s [{"text":"  Waypoint: /function gcs:waypoint/save {name:\"evim\"}","color":"light_purple"}]
tellraw @s [{"text":"  Geri dön: /trigger gcs.exec set 15","color":"aqua"}]
tellraw @s ""
