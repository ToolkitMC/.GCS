function #gcs:maintenance_off

tellraw @s ""
tellraw @s [{"text":"[✓] ","color":"green","bold":true},{"text":"BAKIM MODU KAPALI","color":"green","bold":true}]
tellraw @s ""
tellraw @s [{"text":"[!] ","color":"gold"},{"text":"Sistem normal çalışıyor.","color":"white"}]
tellraw @s [{"text":"[!] ","color":"gold"},{"text":"Handler'lar kullanıma hazır.","color":"white"}]
tellraw @s ""

# Tüm oyunculara bildir
tellraw @a[scores={gcs.auth=1..}] [{"text":"[GCS] ","color":"gold","bold":true},{"text":"Sistem normal moda döndü!","color":"green"}]
