$data modify storage gcs:temp exec_h set from storage gcs:db handlers[{hid:$(hid)}]
execute if data storage gcs:temp exec_h run function gcs:exec/_check_and_add
