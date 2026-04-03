# current_handler.commands listesini mc.commands'a kopyala
data modify storage gcs:temp mc.commands set from storage gcs:temp current_handler.commands
function gcs:handlers/multi/run
