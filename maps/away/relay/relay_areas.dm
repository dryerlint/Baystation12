/area/relay/relay_outside
	name = "\improper Grassy Field"
	icon_state = "relay_grass"
	icon = 'relay_sprites.dmi'
	sound_env = FOREST
	base_turf = /turf/simulated/floor/relay/grass/
	always_unpowered = 1
	ambience = list('sound/ambience/jungle.ogg', 'sound/ambience/ambiatm1.ogg')

/area/relay/shuttle_storage_room
	name = "\improper Relay Station Shuttle Maintenance"
	icon_state = "quart"

/area/relay/foyer
	name = "\improper Relay Station Foyer"
	icon_state = "entry_1"

/area/relay/engineering
	name = "\improper Relay Station Engineering"
	icon_state = "engineering"

/area/relay/dining
	name = "\improper Relay Station Dining Hall"
	icon_state = "cafeteria"

/area/relay/kitchen
	name = "\improper Relay Station Kitchen"
	icon_state = "kitchen"

/area/relay/storage
	name = "\improper Relay Station Storage Room"
	icon_state = "storage"

/area/relay/bunks
	name = "\improper Relay Station Bunks"
	icon_state = "engineering"

/area/relay/main_hallway
	name = "\improper Relay Station Main Hallway"
	icon_state = "hallC1"

/area/relay/relay_outside/Initialize()
	for(var/turf/T in src)
		T.set_light(5, 1, "f4f4ff")
		T.temperature = T20C - 11