# AME-GCS bridge setup
# Call this from your own datapack's load to register hooks:
# function macro:event/register {event:"gcs.handler_executed", func:"yourpack:on_gcs_exec"}
# Example: monitor all GCS handler executions

execute unless data storage macro:engine {global:{loaded:1b}} run tellraw @a [{"text":"[GCS/AME] ","color":"gold"},{"text":"AME not loaded — bridge inactive.","color":"red"}]
execute if data storage macro:engine {global:{loaded:1b}} run tellraw @a [{"text":"[GCS/AME] ","color":"gold"},{"text":"AME bridge active. Event: gcs.handler_executed","color":"green"}]
