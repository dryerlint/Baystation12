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

/turf/simulated/floor/relay/grass/New()
	set_light(2, 1, "f7edc5")
	temperature = T20C - 11