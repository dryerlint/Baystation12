/area/relay/relay_outside
	name = "\improper Grassy Field"
	icon_state = "relay_grass"
	icon = 'relay_sprites.dmi'
	sound_env = FOREST
	base_turf = /turf/simulated/floor/relay/grass/

/area/relay/shuttle_storage_room
	name = "\improper Relay Station Shuttle Maintenance"
	icon_state = "quart"
	base_turf = /turf/simulated/floor/plating

/area/relay/foyer
	name = "\improper Relay Station Foyer"
	icon_state = "entry_1"

/area/relay/relay_outside/Initialize()
	for(var/turf/T in src)
		T.set_light(2, 2, "f2f2ff")
		T.temperature = T20C - 11