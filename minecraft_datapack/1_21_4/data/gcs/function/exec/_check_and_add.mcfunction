execute store result score #req gcs.count run data get storage gcs:temp exec_h.auth_level
execute if score @s gcs.auth >= #req gcs.count run function gcs:exec/_add_action with storage gcs:temp exec_h
