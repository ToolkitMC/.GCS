# ═══════════════════════════════════════════════════
# CUSTOM TOGGLE
# State: gcs:db toggle_states listesi, {hid:N, state:0b/1b}
# Handler command: "function gcs:handlers/builtin_extra/custom_toggle with storage gcs:temp current_handler"
# on_cmd: "effect give @s resistance 999999 4 true"
# off_cmd: "effect clear @s resistance"
# ═══════════════════════════════════════════════════

# toggle_states listesi yoksa oluştur
execute unless data storage gcs:db toggle_states run data modify storage gcs:db toggle_states set value []

# Bu hid için kayıt yoksa ekle (state=0b, OFF)
$execute unless data storage gcs:db toggle_states[{hid:$(hid)}] run data modify storage gcs:db toggle_states append value {hid:$(hid),state:0b}

# Mevcut state'i score'a al
$execute store result score #ct_state gcs.count run data get storage gcs:db toggle_states[{hid:$(hid)}].state 1

# OFF → ON
$execute if score #ct_state gcs.count matches 0 run $(on_cmd)
$execute if score #ct_state gcs.count matches 0 run data modify storage gcs:db toggle_states[{hid:$(hid)}].state set value 1b

# ON → OFF
$execute if score #ct_state gcs.count matches 1 run $(off_cmd)
$execute if score #ct_state gcs.count matches 1 run data modify storage gcs:db toggle_states[{hid:$(hid)}].state set value 0b
