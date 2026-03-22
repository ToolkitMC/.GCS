# Hedefi izle — spectator modunda bir oyuncuya geç
# Kullanim: function gcs:handlers/builtin_extra/spectate {target:"OyuncuAdi"}
$spectate $(target)
$tellraw @s [{"text":"[👁] ","color":"aqua"},{"text":"İzleniyor: ","color":"gray"},{"text":"$(target)","color":"yellow"}]
