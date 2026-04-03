# Called automatically before each destructive operation
# Son 1 snapshot tutar — gcs:backup snapshot
data modify storage gcs:backup snapshot.handlers set from storage gcs:db handlers
data modify storage gcs:backup snapshot.metadata set from storage gcs:db metadata
data modify storage gcs:backup snapshot.toggle_states set from storage gcs:db toggle_states
data modify storage gcs:backup snapshot.waypoints set from storage gcs:waypoints points
data modify storage gcs:backup has_snapshot set value 1b
