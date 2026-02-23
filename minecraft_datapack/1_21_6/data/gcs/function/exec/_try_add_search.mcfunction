data remove storage gcs:temp exec_h
$data modify storage gcs:temp exec_h set from storage gcs:db handlers[$(idx)]
$execute if data storage gcs:temp exec_h{enabled:1b,name:"$(query)"} run function gcs:exec/_check_and_add
$execute if data storage gcs:temp exec_h{enabled:1b,category:"$(query)"} run function gcs:exec/_check_and_add_dedup
