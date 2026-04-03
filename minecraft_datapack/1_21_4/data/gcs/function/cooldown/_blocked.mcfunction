# Blocked by cooldown — show remaining time via AME
scoreboard players set #cd_ok gcs.count 0
# AME cooldown/remaining -> macro:output result (ticks remaining)
# macro:input player + key zaten set edilmis olmali — caller set eder
tellraw @s [{"text":"[Cooldown] ","color":"red","bold":true},{"text":"Handler on cooldown. Try again later.","color":"yellow"}]
