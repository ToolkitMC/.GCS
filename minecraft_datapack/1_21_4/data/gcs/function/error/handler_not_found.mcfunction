tellraw @s ""
tellraw @s [{"text":"[✗] ","color":"red","bold":true},{"text":"Hata: Handler Bulunamadı","color":"red"}]
$tellraw @s [{"text":"  ├─ ","color":"dark_gray"},{"text":"Aranan ID: ","color":"gray"},{"text":"$(hid)","color":"yellow"}]
tellraw @s [{"text":"  └─ ","color":"dark_gray"},{"text":"Mevcut handler'ları görmek için: ","color":"gray"},{"text":"/trigger gcs.ui","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger gcs.ui"},"hoverEvent":{"action":"show_text","contents":"Tıkla ve çalıştır"}}]
tellraw @s ""
