/area/relay
	base_turf = /turf/unsimulated/floor/relay/grass/

/area/relay/outside
	sound_env = FOREST
	ambience = list('sound/ambience/jungle.ogg', 'sound/ambience/ambiatm1.ogg')

/area/relay/outside/Initialize()
	for(var/turf/T in src)
		T.set_light(5, 0.5, "fafaff")
		T.temperature = T20C - 11

/area/relay/outside/relay_outside
	name = "\improper Relay Station Grassy Field"
	icon_state = "relay_grass"
	icon = 'relay_sprites.dmi'
	always_unpowered = 1

/area/relay/outside/radio_field
	name = "\improper Relay Station Antenna Array"
	icon_state = "engineering"

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

/area/relay/telecom
	name = "\improper Relay Station Server Room"
	icon_state = "server"

/area/relay/telecom/control_room
	name = "\improper Relay Station Control Room"
	icon_state = "bridge"

/area/relay/telecom/secure
	name = "\improper Relay Station Secure Data"
	icon_state = "security"