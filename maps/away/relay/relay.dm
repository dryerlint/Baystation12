#include "relay_areas.dm"
#include "relay.dmm"
#include "../mining/mining_areas.dm"

/obj/effect/overmap/sector/relay
	name = "Telecommunications anomaly"
	desc = "Ship telecom systems report a strong signal coming from the surface of the planet. Large dish-like structure detected."
	icon_state = "object"
	known = 0

/turf/simulated/floor/relay/grass
	name = "grass"
	desc = "Thick green grass, with dirt visible underneath."
	icon = 'icons/turf/jungle.dmi'
	icon_state = "grass3"

/turf/simulated/floor/relay/grass/get_footstep_sound()
	return safepick(footstep_sounds[FOOTSTEP_ASTEROID])

/obj/structure/sign/relay
	name = "\improper welcome sign"
	desc = "An old, rusted sign. It reads 'Pentaline Relay Station'. At the bottom is a small logo for 'HSF Incorporated'."
	icon_state = "darkplaque"

/obj/structure/sign/relay/group_picture
	name = "\improper group picture"
	desc = "A faded picture of nine humans standing in front of a radio dish. They look happy."
	icon = 'relay_sprites.dmi'
	icon_state = "group_picture"

/obj/item/weapon/paper/relay/welcome_note
	name = "welcome note"
	info = "<h2>Pentaline Relay Station</h2>Welcome! Please wait for our desk staff to arrive and register you."