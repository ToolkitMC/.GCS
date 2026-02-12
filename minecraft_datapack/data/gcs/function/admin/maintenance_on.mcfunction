tellraw @s ""
tellraw @s [{"text":"[🔧] ","color":"gold","bold":true},{"text":"BAKIM MODU AKTİF","color":"red","bold":true}]
tellraw @s ""
tellraw @s [{"text":"[!] ","color":"gold"},{"text":"Sistem bakım modunda.","color":"yellow"}]
tellraw @s [{"text":"[!] ","color":"gold"},{"text":"Handler'lar şu anda kullanılamaz.","color":"yellow"}]
tellraw @s ""

# Tüm oyunculara bildir
tellraw @a[scores={gcs.auth=1..}] [{"text":"[GCS] ","color":"gold","bold":true},{"text":"Sistem bakım moduna alındı!","color":"red"}]
