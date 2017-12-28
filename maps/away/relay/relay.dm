#include "relay_areas.dm"
#include "relay.dmm"
#include "../mining/mining_areas.dm"

/obj/effect/overmap/sector/relay
	name = "Telecommunications anomaly"
	desc = "Ship telecom systems report a strong signal coming from the surface of the planet. Tall metallic structure detected."
	icon_state = "object"
	known = 0

/turf/unsimulated/floor/relay/grass
	name = "grass"
	desc = "Thick green grass, with dirt visible underneath."
	icon = 'icons/turf/jungle.dmi'
	icon_state = "grass3"

var/list/FOOTSTEP_SOUNDS_ASTEROID = list(
	'sound/effects/footstep/asteroid1.ogg',
	'sound/effects/footstep/asteroid2.ogg',
	'sound/effects/footstep/asteroid3.ogg',
	'sound/effects/footstep/asteroid4.ogg',
	'sound/effects/footstep/asteroid5.ogg')

/turf/unsimulated/floor/relay/grass/get_footstep_sound()
	return safepick(FOOTSTEP_SOUNDS_ASTEROID)

/obj/structure/sign/relay
	name = "\improper welcome sign"
	desc = "An old, rusted sign. It reads 'Pentaline Relay Station'. At the bottom is a small logo for 'HSF Incorporated'."
	icon_state = "darkplaque"

/obj/structure/sign/relay/group_picture
	name = "\improper group picture"
	desc = "A faded picture of nine humans standing in front of a large radio antenna. They look happy."
	icon = 'relay_sprites.dmi'
	icon_state = "group_picture"

/obj/structure/relay/radio_tower
	name = "radio tower"
	icon = 'relay_sprites_large.dmi'
	icon_state = "radio_tower_animated"
	desc = "This large, metallic antenna towers over you, stretching out towards the sky."
	plane = ABOVE_OBJ_PLANE
	layer = BASE_ABOVE_OBJ_LAYER

/*
[center][b]HSF Incorporated[/b]
[b]Long-Distance Message[/b][/center]
[grid][row][cell][small][b]Message #:[/b][cell][small][b]0000430[/b]
[row][cell][small][b]Origin:[/b][cell][small]Company Headquarters [i](ID#001)[/i]
[row][cell][small][b]Destination:[/b][cell][small]Pentaline Relay Station [i](ID#009)[/i]
[row][cell][small][b]Send Date:[/b][cell][small][b]2539-03-11[/b]
[row][cell][small]--------------------[cell][small][i]MESSAGE FOLLOWS[/i]
[/grid][hr]
Insert message here.

[hr][small][i]Recieved and printed at: Pentaline Relay Station
Property of HSF Inc.[/i][/small]
*/

/*
<font face="Verdana" color=black>
<center><B>HSF Incorporated</B><BR>
<B>Long-Distance Message</B></center><BR>
<table></td><tr><td><font size = "1"><B>Message #:</B><td><font size = "1"><B>0000430</B><BR>
</td><tr><td><font size = "1"><B>Origin:</B><td><font size = "1">Company Headquarters <I>(ID#001)</I><BR>
</td><tr><td><font size = "1"><B>Destination:</B><td><font size = "1">Pentaline Relay Station <I>(ID#009)</I><BR>
</td><tr><td><font size = "1"><B>Send Date:</B><td><font size = "1"><B>2539-03-11</B><BR>
</td><tr><td><font size = "1">--------------------<td><font size = "1"><I>MESSAGE FOLLOWS</I><BR>
</td></tr></table><HR><BR>
Insert message here.<BR>
<BR>
<HR><font size = "1"><I>Recieved and printed at: Pentaline Relay Station<BR>
Property of HSF Inc.</I></font></font>
*/

/*
Crew Manifest...
1) Chief Engineer: Mary Praday
2) Telecommunications Technician: ??? ???
3) Telecommunications Technician: ??? ???
4) Telecommunications Technician: ??? ???
5) Chief Telecommunications Technician: ??? ???
6) Clerk: ??? ???
7) Medic: ??? ???
8) Cargo Assistant: ??? ???
9) Director: Michael ???
-----------------------------------
Other...
Guy at HQ: Andersen Payad
*/

/obj/item/weapon/paper/relay/note_welcome
	name = "welcome note"
	info = "<h2>Pentaline Relay Station</h2>Welcome! Please wait for our desk staff to arrive and register you."

/obj/item/weapon/paper/relay/note_testmessage
	name = "message printout"
	info = "<font face=\"Verdana\" color=black>\
	<center><B>HSF Incorporated</B><BR>\
	<B>Long-Distance Message</B></center><BR>\
	<table></td><tr><td><font size=\"1\"><B>Message #:</B><td><font size = \"1\"><B>0000430</B><BR>\
	</td><tr><td><font size=\"1\"><B>Origin:</B><td><font size=\"1\">Company Headquarters <I>(ID#001)</I><BR>\
	</td><tr><td><font size=\"1\"><B>Destination:</B><td><font size=\"1\">Pentaline Relay Station <I>(ID#009)</I><BR>\
	</td><tr><td><font size=\"1\"><B>Send Date:</B><td><font size=\"1\"><B>2539-03-11</B><BR>\
	</td><tr><td><font size=\"1\">--------------------<td><font size=\"1\"><I>MESSAGE FOLLOWS</I><BR>\
	</td></tr></table><HR><BR>\
	TEST MESSAGE - HSF INCORPORATED - \
	PENTALINE RELAY STATION INITIAL COMMUNICATIONS TEST - TEST MESSAGE OVER<BR>\
	<BR>\
	<HR><font size=\"1\"><I>Recieved and printed at: Pentaline Relay Station<BR>\
	Property of HSF Inc.</I></font></font>"

/obj/item/weapon/paper/relay/note_congrats
	name = "message printout"
	info = "<font face=\"Verdana\" color=black>\
	<center><B>HSF Incorporated</B><BR>\
	<B>Long-Distance Message</B></center><BR>\
	<table></td><tr><td><font size=\"1\"><B>Message #:</B><td><font size = \"1\"><B>0000438</B><BR>\
	</td><tr><td><font size=\"1\"><B>Origin:</B><td><font size=\"1\">Company Headquarters <I>(ID#001)</I><BR>\
	</td><tr><td><font size=\"1\"><B>Destination:</B><td><font size=\"1\">Pentaline Relay Station <I>(ID#009)</I><BR>\
	</td><tr><td><font size=\"1\"><B>Send Date:</B><td><font size=\"1\"><B>2539-03-11</B><BR>\
	</td><tr><td><font size=\"1\">--------------------<td><font size=\"1\"><I>MESSAGE FOLLOWS</I><BR>\
	</td></tr></table><HR><BR>\
	Director Michael,<br>\
	Congratulations on your assignment as the manager of our new communications facility!\
	I hope the construction went well. The technicians on this end report that we\
	have recieved all of your test transmissions with excellent readability, and decent strength, considering the distance.\
	<br>Anyways, the planet you're on has been terraformed and seeded, so the atmosphere should\
	be perfectly breathable. The temperature's rather cold, but we're working on that... it can be fixed once\
	we get some more funding. Feel free to take walks around the base.\
	<br>The outer colonies have also been terraformed successfully, and should begin construction soon.\
	Remember, your team and your facility are our one link to the colonists out there. Good luck!\
	Thank you,<br>\
	Andersen Payad<br>\
	HSF Inc.<BR>\
	<BR>\
	<HR><font size=\"1\"><I>Recieved and printed at: Pentaline Relay Station<BR>\
	Property of HSF Inc.</I></font></font>"

/obj/item/weapon/paper/relay/note_spaceside
	name = "message printout"
	info = "<center><b>HSF Incorporated</b>\
	<b>Long-Distance Message</b></center>\
	<grid><row><cell><small><b>Message #:</b><cell><small><b>0000462</b>\
	<row><cell><small><b>Origin:</b><cell><small>Company Headquarters <i>(ID#001)</i>\
	<row><cell><small><b>Destination:</b><cell><small>Pentaline Relay Station <i>(ID#009)</i>\
	<row><cell><small><b>Send Date:</b><cell><small><b>2539-03-13</b>\
	<row><cell><small>--------------------<cell><small><i>MESSAGE FOLLOWS</i>\
	</grid><hr>\
	Chief Engineer Praday,<br>\
	I know you wanted to build this station space-side, but I assure you, our engineering\
	team has reviewed it repeatedly, and it is simply impractical.\
	This system has too many meteor storms, and the local star is putting out far too much interference.\
	Really, your planet's magnetic field is the only thing making this communications relay possible.\
	It's annoying, yes, but you'll get used to it. Enjoy the fresh planetary air for once, Mary.\
	Thank you,<br>\
	Andersen Payad<br>\
	HSF Inc.\
	<br><hr><small><i>Recieved and printed at: Pentaline Relay Station\
	Property of HSF Inc.</i></small>"