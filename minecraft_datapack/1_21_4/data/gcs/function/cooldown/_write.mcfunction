$data modify storage gcs:cooldowns cooldowns[$(cd_last)].uuid set from storage gcs:temp cd_uuid
$data modify storage gcs:cooldowns cooldowns[$(cd_last)].hid set from storage gcs:temp cd_hid
$data modify storage gcs:cooldowns cooldowns[$(cd_last)].ticks set from storage gcs:temp cd_ticks
