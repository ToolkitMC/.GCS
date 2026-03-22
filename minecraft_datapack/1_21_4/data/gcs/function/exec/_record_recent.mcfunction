$data modify storage gcs:db recent prepend value {hid:$(hid)}
execute store result score #recent_count gcs.count run data get storage gcs:db recent
execute if score #recent_count gcs.count matches 6.. run data remove storage gcs:db recent[5]
