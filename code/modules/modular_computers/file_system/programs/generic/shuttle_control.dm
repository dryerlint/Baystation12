/datum/computer_file/program/shuttle_control
	filename = "shuttlecontrol"
	filedesc = "Shuttle Traffic Control"
	nanomodule_path = /datum/nano_module/shuttle_control/
	extended_desc = "Allows remote viewing of a shuttle's location and status. This program cannot be run on tablet computers."
	program_icon_state = "shuttle_control"
	program_menu_icon = "signal-diag"
	size = 12
	requires_ntnet = 1
	available_on_ntnet = 1
	usage_flags = PROGRAM_LAPTOP | PROGRAM_CONSOLE | PROGRAM_TELESCREEN
	network_destination = "shuttle tracking radar"
	required_access = access_cargo

/datum/nano_module/shuttle_control
	name = "Shuttle Traffic Control"
	//var/list/tracked_shuttles

/datum/nano_module/shuttle_control/Destroy()
	. = ..()
	//tracked_shuttles = null

/datum/nano_module/shuttle_control/proc/refresh()
	return 0
	//shuttle_controller.shuttles

/datum/nano_module/shuttle_control/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1, var/datum/topic_state/state = GLOB.default_state)
	var/list/data = host.initial_data()

	var/list/datum/shuttle/autodock/tracked_shuttles = list()

	for(var/shuttle_S in shuttle_controller.shuttles)
		if(istype(shuttle_controller.shuttles[shuttle_S],/datum/shuttle/autodock))
			tracked_shuttles += shuttle_controller.shuttles[shuttle_S]

	data["tracked_shuttles"] = tracked_shuttles
	world << data["tracked_shuttles"][1].name
	world << data["tracked_shuttles"][1].transponder_present

	ui = GLOB.nanomanager.try_update_ui(user, src, ui_key, ui, data, force_open)
	if (!ui)
		ui = new(user, src, ui_key, "shuttle_traffic_control.tmpl", "Shuttle Traffic Control", 600, 600, state = state)
		if(host.update_layout())
			ui.auto_update_layout = 1
		ui.set_initial_data(data)
		ui.open()
		ui.set_auto_update(1)

/datum/nano_module/shuttle_control/Topic(href, href_list)
	if(..())
		return 1
	/*if( href_list["refresh"] )
		refresh()
		return 1*/