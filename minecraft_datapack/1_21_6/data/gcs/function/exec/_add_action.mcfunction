$data modify storage gcs:temp exec_dialog.actions append value {label:"$(label)",action:{type:"minecraft:run_command",command:"/trigger gcs.exec set $(hid)"}}
