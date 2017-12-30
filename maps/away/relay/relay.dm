#include "relay_areas.dm"
#include "relay.dmm"
#include "../mining/mining_areas.dm"

/obj/effect/overmap/sector/relay
	name = "Telecommunications anomaly"
	desc = "Ship telecom systems report a strong signal coming from the surface of a planet. Tall metallic structure detected."
	icon_state = "object"
	known = 0
	generic_waypoints = list(
		"nav_relay_1",
		"nav_relay_2",
		"nav_relay_small",
		"nav_relay_antag"
	)

/obj/effect/shuttle_landmark/nav_relay/nav1
	name = "Telecommunications Anomaly Landing Pad #1"
	landmark_tag = "nav_relay_1"
	autoset = 1

/obj/effect/shuttle_landmark/nav_relay/nav2
	name = "Telecommunications Anomaly Landing Pad #2"
	landmark_tag = "nav_relay_2"
	autoset = 1

/obj/effect/shuttle_landmark/nav_relay/nav_small
	name = "Telecommunications Anomaly Small Landing Pad"
	landmark_tag = "nav_relay_small"
	autoset = 1

/obj/effect/shuttle_landmark/nav_relay/nav_antag
	name = "Telecommunications Anomaly Landing Field"
	landmark_tag = "nav_relay_antag"
	autoset = 1

/turf/unsimulated/floor/relay/grass
	name = "grass"
	desc = "Thick green grass, with dark, greyish-brown dirt visible underneath."
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
	plane = ABOVE_HUMAN_PLANE
	layer = ABOVE_HUMAN_LAYER
	anchored = 1
	density = 1

/*
Crew Manifest...
1) Chief Engineer: Mary Praday
2) Telecommunications Technician: Caroline Thompson
3) Telecommunications Technician: ??? ???
4) Telecommunications Technician: ??? Jones
5) Chief Telecommunications Technician: ??? Carter
6) Clerk: ??? ???
7) Medic: ??? ???
8) Cargo Assistant: ??? Harris
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
	info = {"<font face=\"Verdana\" color=black>
	<center><B>HSF Incorporated</B>
	<B>Long-Distance Message</B></center>
	<table></td><tr><td><font size=\"1\"><B>Message #:</B><td><font size = \"1\"><B>0000430</B>
	</td><tr><td><font size=\"1\"><B>Origin:</B><td><font size=\"1\">Company Headquarters <I>(ID#001)</I>
	</td><tr><td><font size=\"1\"><B>Destination:</B><td><font size=\"1\">Pentaline Relay Station <I>(ID#009)</I>
	</td><tr><td><font size=\"1\"><B>Send Date:</B><td><font size=\"1\"><B>2539-03-11</B>
	</td><tr><td><font size=\"1\">--------------------<td><font size=\"1\"><I>MESSAGE FOLLOWS</I>
	</td></tr></table><HR>

	TEST MESSAGE - HSF INCORPORATED - \
	PENTALINE RELAY STATION INITIAL COMMUNICATIONS TEST - TEST MESSAGE OVER

	<HR><font size=\"1\"><I>Recieved and printed at: Pentaline Relay Station
	Property of HSF Inc.</I></font></font>"}

/obj/item/weapon/paper/relay/note_congrats
	name = "message printout"
	info = {"<font face=\"Verdana\" color=black>
	<center><B>HSF Incorporated</B>
	<B>Long-Distance Message</B></center>
	<table></td><tr><td><font size=\"1\"><B>Message #:</B><td><font size = \"1\"><B>0000438</B>
	</td><tr><td><font size=\"1\"><B>Origin:</B><td><font size=\"1\">Company Headquarters <I>(ID#001)</I>
	</td><tr><td><font size=\"1\"><B>Destination:</B><td><font size=\"1\">Pentaline Relay Station <I>(ID#009)</I>
	</td><tr><td><font size=\"1\"><B>Send Date:</B><td><font size=\"1\"><B>2539-03-11</B>
	</td><tr><td><font size=\"1\">--------------------<td><font size=\"1\"><I>MESSAGE FOLLOWS</I>
	</td></tr></table><HR>

	Director Michael,

	Congratulations on your assignment as the manager of our new communications facility!
	I hope the construction went well. The technicians on this end report that we \
	have recieved all of your test transmissions with excellent readability, and decent strength, considering the distance.
	Anyways, the planet you're on has been terraformed and seeded, so the atmosphere should \
	be perfectly breathable. The temperature's rather cold, but we're working on that... it can be fixed once \
	we get some more funding. Feel free to take walks around the base.
	The outer colonies have also been terraformed successfully, and should begin construction soon. \
	Remember, your team and your facility are our one link to the colonists out there. Good luck!

	Thank you,
	Andersen Payad
	HSF Inc.

	<HR><font size=\"1\"><I>Recieved and printed at: Pentaline Relay Station
	Property of HSF Inc.</I></font></font>"}

/obj/item/weapon/paper/relay/note_spaceside
	name = "message printout"
	info = {"<font face=\"Verdana\" color=black>
	<center><B>HSF Incorporated</B>
	<B>Long-Distance Message</B></center>
	<table></td><tr><td><font size=\"1\"><B>Message #:</B><td><font size = \"1\"><B>0000462</B>
	</td><tr><td><font size=\"1\"><B>Origin:</B><td><font size=\"1\">Company Headquarters <I>(ID#001)</I>
	</td><tr><td><font size=\"1\"><B>Destination:</B><td><font size=\"1\">Pentaline Relay Station <I>(ID#009)</I>
	</td><tr><td><font size=\"1\"><B>Send Date:</B><td><font size=\"1\"><B>2539-03-13</B>
	</td><tr><td><font size=\"1\">--------------------<td><font size=\"1\"><I>MESSAGE FOLLOWS</I>
	</td></tr></table><HR>

	Chief Engineer Praday,

	I know you wanted to build this station space-side, but I assure you, our engineering \
	team has reviewed it repeatedly, and it is simply impractical. \
	This system has too many meteor storms, and the local star is putting out far too much interference. \
	Really, your planet's magnetic field is the only thing making this communications relay possible. \
	It's annoying, yes, but you'll get used to it. Enjoy the fresh planetary air for once, Mary.

	Thank you,
	Andersen Payad
	HSF Inc.

	<HR><font size=\"1\"><I>Recieved and printed at: Pentaline Relay Station
	Property of HSF Inc.</I></font></font>"}

/obj/item/weapon/paper/relay/note_telcom_manual
	name = "paper ripped from a binder"
	info = {"<center><b>Bradley-Gordon Telecommunications Products</b>
	<b>Model 1900B Information Bus Mainframe</b>

	<b>User Manual</b></center>

	Thank you for purchasing a Bradley-Gordon brand Bus Mainframe. This document will guide you through \
	the construction and usage of your new product.

	TABLE OF CONTENTS:
	- CONSTRUCTION : Pg 2
	- SETUP AND LINKAGE : Pg 10
	- STANDARD OPERATION : Pg 24
	- DEBUGGING MODE : Pg 47
	- DEVICE TROUBLESHOOTING : Pg 50
	- RF AND ELECTRIC SAFETY : Pg 54
	- DEVICE SPECIFICATIONS : Pg 56
	- GLOSSARY AND INDEX : Pg 68

	Turn to the next page for the construction guide."}

/obj/item/weapon/paper/relay/note_colony1
	name = "message printout"
	info = {"<font face=\"Verdana\" color=black>
	<center><B>HSF Incorporated</B>
	<B>Long-Distance Message</B></center>
	<table></td><tr><td><font size=\"1\"><B>Message #:</B><td><font size = \"1\"><B>0000579</B>
	</td><tr><td><font size=\"1\"><B>Origin:</B><td><font size=\"1\">Company Headquarters <I>(ID#001)</I>
	</td><tr><td><font size=\"1\"><B>Destination:</B><td><font size=\"1\">Rubenstein Colony <I>(ID#012)</I>
	</td><tr><td><font size=\"1\"><B>Send Date:</B><td><font size=\"1\"><B>2539-05-20</B>
	</td><tr><td><font size=\"1\">--------------------<td><font size=\"1\"><I>MESSAGE FOLLOWS</I>
	</td></tr></table><HR>

	Director Barkley,

	We have recieved your test transmission, sucessfully sent to company headquarters via the \
	Pentaline Relay Station. Good to see that the construction has begun! You should recieve our shipment of \
	food and generator fuel in the next week or so; we hope to recieve your first mineral exports by the end of next month. \
	Let me know how the colonists are feeling. The terraforming process had to be slightly rushed, so there \
	may be some residual atmospheric issues.

	Thank you and good luck,
	Andersen Payad
	HSF Inc.

	<HR><font size=\"1\"><I>Recieved and printed at: Pentaline Relay Station
	Property of HSF Inc.</I></font></font>"}

/obj/item/weapon/paper/relay/note_food
	name = "message printout"
	info = {"<font face=\"Verdana\" color=black>
	<center><B>HSF Incorporated</B>
	<B>Long-Distance Message</B></center>
	<table></td><tr><td><font size=\"1\"><B>Message #:</B><td><font size = \"1\"><B>000624</B>
	</td><tr><td><font size=\"1\"><B>Origin:</B><td><font size=\"1\">Company Headquarters <I>(ID#001)</I>
	</td><tr><td><font size=\"1\"><B>Destination:</B><td><font size=\"1\">Pentaline Relay Station <I>(ID#009)</I>
	</td><tr><td><font size=\"1\"><B>Send Date:</B><td><font size=\"1\"><B>2539-06-14</B>
	</td><tr><td><font size=\"1\">--------------------<td><font size=\"1\"><I>MESSAGE FOLLOWS</I>
	</td></tr></table><HR>

	Telecommunications Technician Jones,

	I've been told that you're the one handling kitchen duty at the Station. \
	I know the recent food shipment was a little bit lackluster, but you'll have to make do, I'm afraid. \
	There's just not enough money for us to purchase better supplies. We can hardly even afford to send you \
	private shuttles anymore, we've started renting space on larger freighters, and you know how strict the \
	weight restrictions are on those. Additionally, very few freighters pass through the remote area you're in, \
	making the whole process rather difficult. Unfortunately, unless Rubenstein can dig up a lot more minerals \
	very quickly, you can probably expect another shipment of MREs next month.

	Thank you,
	Andersen Payad
	HSF Inc.

	<HR><font size=\"1\"><I>Recieved and printed at: Pentaline Relay Station
	Property of HSF Inc.</I></font></font>"}

/obj/item/weapon/newspaper/relay/newspaper_1/Initialize()
	..()
	var/datum/feed_channel/hsf_longdist = new()
	hsf_longdist.channel_name = "HSF Long-Distance News Transmissions"
	hsf_longdist.author = "HSF Incorporated"
	var/datum/feed_message/hsf_mes1 = new()
	hsf_mes1.author = "The Griffon"
	hsf_mes1.body = {"<b>NanoTrasen research team discovers new radiation treatment</b><br>
	2539-06-23 : A team of 54 scientists working in one of the corporation's Martian facilities made a breakthrough last month.
	They claim to have discovered an entierly new method of treating radiation sickness, using a new mixture of
	cryogenic-therapy medicines. Like many of the company's products, these medicines are derived from phoron.
	Most information on the treatment is still considered a company secret, but we hope to hear more about it soon."}
	var/datum/feed_message/hsf_mes2 = new()
	hsf_mes2.author = "The Griffon"
	hsf_mes2.body = {"<b>What this IPC did will SHOCK you!</b><br>
	2539-06-24 : IPCs can do crazy things! I'm Holly Jefferson, reporting from Mars. Just last week, this IPC walked up
	to me on the street, slapped me in the face with a piece of paper, and said 'I hate organics.' Like I said,
	shocking! We really need to keep these dudes under control."}
	hsf_longdist.messages += hsf_mes1
	hsf_longdist.messages += hsf_mes2
	news_content += hsf_longdist

/obj/item/weapon/paper/relay/note_colony2
	name = "message printout"
	info = {"<font face=\"Verdana\" color=black>
	<center><B>HSF Incorporated</B>
	<B>Long-Distance Message</B></center>
	<table></td><tr><td><font size=\"1\"><B>Message #:</B><td><font size = \"1\"><B>000732</B>
	</td><tr><td><font size=\"1\"><B>Origin:</B><td><font size=\"1\">Company Headquarters <I>(ID#001)</I>
	</td><tr><td><font size=\"1\"><B>Destination:</B><td><font size=\"1\">Darben-A Colony <I>(ID#014)</I>
	</td><tr><td><font size=\"1\"><B>Send Date:</B><td><font size=\"1\"><B>2539-07-02</B>
	</td><tr><td><font size=\"1\">--------------------<td><font size=\"1\"><I>MESSAGE FOLLOWS</I>
	</td></tr></table><HR>

	Director Jacob,

	Good to hear that you guys have started construction. Like we said, you should get the \
	first supplies shipments in the next couple of weeks, depending on when we can find \
	a freighter willing to take them. Please get your mining department up and running as soon as possible.

	Thank you and good luck,
	Andersen Payad
	HSF Inc.

	<HR><font size=\"1\"><I>Recieved and printed at: Pentaline Relay Station
	Property of HSF Inc.</I></font></font>"}

/obj/item/weapon/paper/relay/note_colony3
	name = "message printout"
	info = {"<font face=\"Verdana\" color=black>
	<center><B>HSF Incorporated</B>
	<B>Long-Distance Message</B></center>
	<table></td><tr><td><font size=\"1\"><B>Message #:</B><td><font size = \"1\"><B>000755</B>
	</td><tr><td><font size=\"1\"><B>Origin:</B><td><font size=\"1\">Darben-A Colony <I>(ID#014)</I>
	</td><tr><td><font size=\"1\"><B>Destination:</B><td><font size=\"1\">Company Headquarters <I>(ID#001)</I>
	</td><tr><td><font size=\"1\"><B>Send Date:</B><td><font size=\"1\"><B>2539-07-11</B>
	</td><tr><td><font size=\"1\">--------------------<td><font size=\"1\"><I>MESSAGE FOLLOWS</I>
	</td></tr></table><HR>

	Mr. Payad,

	I am sad to report that our mining is not going well. The ground here is far softer and \
	less stable than expected. Our exploratory teams are having difficulty finding any significant deposits. \
	It may be a while before we can get a shipment to you. In addition, Engineering reports that \
	the power generators cannot handle this much load, and the colonists are now complaining about the \
	"bland food". Mr. Payad, I must say that things are not going well.

	--
	Jacob Smith
	Darben-A Colony Director

	<HR><font size=\"1\"><I>Recieved and printed at: Pentaline Relay Station
	Property of HSF Inc.</I></font></font>"}

/obj/item/weapon/paper/relay/note_colony4
	name = "message printout"
	info = {"<font face=\"Verdana\" color=black>
	<center><B>HSF Incorporated</B>
	<B>Long-Distance Message</B></center>
	<table></td><tr><td><font size=\"1\"><B>Message #:</B><td><font size = \"1\"><B>000764</B>
	</td><tr><td><font size=\"1\"><B>Origin:</B><td><font size=\"1\">Darben-A Colony <I>(ID#014)</I>
	</td><tr><td><font size=\"1\"><B>Destination:</B><td><font size=\"1\">Company Headquarters <I>(ID#001)</I>
	</td><tr><td><font size=\"1\"><B>Send Date:</B><td><font size=\"1\"><B>2539-07-13</B>
	</td><tr><td><font size=\"1\" color=red><b>MESSAGE CONDITION:</b><td><font size=\"1\" color=red><B>URGENT - URGENT</B>
	</td><tr><td><font size=\"1\">--------------------<td><font size=\"1\"><I>MESSAGE FOLLOWS</I>
	</td></tr></table><HR>

	This is Director Jacob Smith, of the Darben-A Colony. There has been an explosion in \
	the mining facility here, and many colonists are injured. We estimate at least 15 casualties, likely even \
	more. Our medical team cannot handle this, and we require immediate assistance or evacuation. \
	Mr. Payad, please, send us a shuttle at once. The situation is worsening quickly.

	--
	Jacob Smith
	Darben-A Colony Director

	<HR><font size=\"1\"><I>Recieved and printed at: Pentaline Relay Station
	Property of HSF Inc.</I></font></font>"}

/obj/item/weapon/paper/relay/note_alcohol
	name = "message printout"
	info = {"<font face=\"Verdana\" color=black>
	<center><B>HSF Incorporated</B>
	<B>Long-Distance Message</B></center>
	<table></td><tr><td><font size=\"1\"><B>Message #:</B><td><font size = \"1\"><B>000802</B>
	</td><tr><td><font size=\"1\"><B>Origin:</B><td><font size=\"1\">Company Headquarters <I>(ID#001)</I>
	</td><tr><td><font size=\"1\"><B>Destination:</B><td><font size=\"1\">Pentaline Relay Station <I>(ID#009)</I>
	</td><tr><td><font size=\"1\"><B>Send Date:</B><td><font size=\"1\"><B>2539-08-06</B>
	</td><tr><td><font size=\"1\">--------------------<td><font size=\"1\"><I>MESSAGE FOLLOWS</I>
	</td></tr></table><HR>

	Employee #6,

	I understand that you are a nervous man, but no, we cannot afford to send you a whole keg of beer. \
	Your job is to be a clerk and to manage paperwork, not to bankrupt us with your drinking habits.

	Sorry,
	Andersen Payad
	HSF Inc.

	<HR><font size=\"1\"><I>Recieved and printed at: Pentaline Relay Station
	Property of HSF Inc.</I></font></font>"}

/obj/item/weapon/newspaper/relay/newspaper_2/Initialize()
	..()
	var/datum/feed_channel/hsf_longdist = new()
	hsf_longdist.channel_name = "HSF Long-Distance News Transmissions"
	hsf_longdist.author = "HSF Incorporated"
	var/datum/feed_message/hsf_mes1 = new()
	hsf_mes1.author = "The Griffon"
	hsf_mes1.body = {"<b>Merkay Walker wins the Mars' Top Chef award</b><br>
	2539-09-12 : This season of the popular show <i>Mars' Top Chef</i> came to an end yesterday, and everyone's favorite
	contestant, Merkay Walker, came out on top! Walker wowed the judges with his delicious carp-meat burgers, and finished
	off with an amazing cherry pie, with some Skrell ingredients and techniques incorporated into the food. Walker took home
	a 50,000 Thaler prize."}
	var/datum/feed_message/hsf_mes2 = new()
	hsf_mes2.author = "The Griffon"
	hsf_mes2.body = {"<b>Bradley-Gordon Telecommunications Products is cooperating with the VOX!</b><br>
	2539-09-14 : In other news today, the DIA revealed that electronics manufacturer Bradley-Gordon was found
	to be selling their products to Vox, along with similar terrorist and war groups. All of their factories
	and offices are being shut down now, and the communications industry is refusing to buy or sell their products.
	Truly a shocking incident."}
	hsf_longdist.messages += hsf_mes1
	hsf_longdist.messages += hsf_mes2
	news_content += hsf_longdist

/obj/item/weapon/paper/relay/note_debug_fluff
	name = "debug printout"
	info = {"<font face=\"Courier\" color=black>
	<center><B>TELECOMMUNICATIONS MACHINERY GENERAL DEBUG OUTPUT</B>
	Date: 2539-09-20</center>
	<font size=\"1\"><I>DEBUG OUTPUT FOLLOWS</I>

	<table>
	</td><tr><td><font size=\"1\">Mainframe.................<td><font size = \"1\" color=green><B>GOOD</B>
	</td><tr><td><font size=\"1\">Primary Control Console...<td><font size = \"1\" color=green><B>GOOD</B>
	</td><tr><td><font size=\"1\">Gen Server 1..............<td><font size = \"1\" color=green><B>GOOD</B>
	</td><tr><td><font size=\"1\">Gen Server 2..............<td><font size = \"1\" color=red><B>FAIL</B>
	</td><tr><td><font size=\"1\">Gen Server 3..............<td><font size = \"1\" color=green><B>GOOD</B>
	</td><tr><td><font size=\"1\">Gen Server 4..............<td><font size = \"1\" color=green><B>GOOD</B>
	</td><tr><td><font size=\"1\">Gen Server 5..............<td><font size = \"1\" color=green><B>GOOD</B>
	</td><tr><td><font size=\"1\">Gen Server 6..............<td><font size = \"1\" color=yellow><B>WARN</B>
	</td><tr><td><font size=\"1\">Gen Server 7..............<td><font size = \"1\" color=green><B>GOOD</B>
	</td><tr><td><font size=\"1\">Gen Server 8..............<td><font size = \"1\" color=green><B>GOOD</B>
	</td><tr><td><font size=\"1\">BCP Server 1..............<td><font size = \"1\" color=green><B>GOOD</B>
	</td><tr><td><font size=\"1\">Processor Unit 1..........<td><font size = \"1\" color=green><B>GOOD</B>
	</td><tr><td><font size=\"1\">Processor Unit 2..........<td><font size = \"1\" color=green><B>GOOD</B>
	</td><tr><td><font size=\"1\">Processor Unit 3..........<td><font size = \"1\" color=yellow><B>WARN</B>
	</td><tr><td><font size=\"1\">Relay Unit................<td><font size = \"1\" color=yellow><B>WARN</B>
	</td><tr><td><font size=\"1\">Primary Telecomm Hub......<td><font size = \"1\" color=green><B>GOOD</B>
	</td><tr><td><font size=\"1\">Blackbox Recorder.........<td><font size = \"1\" color=green><B>GOOD</B>
	</td><tr><td><font size=\"1\">Alignment Controller......<td><font size = \"1\" color=black><B>????</B>
	</td><tr><td><font size=\"1\">Field Control Unit........<td><font size = \"1\" color=green><B>GOOD</B>
	</td><tr><td><font size=\"1\">Field Reciever Array......<td><font size = \"1\" color=green><B>GOOD</B>
	</td><tr><td><font size=\"1\">Field Omnidir Antenna.....<td><font size = \"1\" color=green><B>GOOD</B>
	</td><tr><td><font size=\"1\">Field Transmitter Array...<td><font size = \"1\" color=green><B>GOOD</B>
	</td><tr><td><font size=\"1\">Power Manager 1...........<td><font size = \"1\" color=green><B>GOOD</B>
	</td><tr><td><font size=\"1\">Power Manager 2...........<td><font size = \"1\" color=green><B>GOOD</B>
	</td></tr></table>

	<font size=\"1\"><I>DEBUG OUTPUT CONCLUDED</I></font></font>"}

/obj/item/weapon/paper/relay/note_sell_equipment
	name = "message printout"
	info = {"<font face=\"Verdana\" color=black>
	<center><B>HSF Incorporated</B>
	<B>Long-Distance Message</B></center>
	<table></td><tr><td><font size=\"1\"><B>Message #:</B><td><font size = \"1\"><B>000975</B>
	</td><tr><td><font size=\"1\"><B>Origin:</B><td><font size=\"1\">Company Headquarters <I>(ID#001)</I>
	</td><tr><td><font size=\"1\"><B>Destination:</B><td><font size=\"1\">Pentaline Relay Station <I>(ID#009)</I>
	</td><tr><td><font size=\"1\"><B>Send Date:</B><td><font size=\"1\"><B>2539-10-11</B>
	</td><tr><td><font size=\"1\">--------------------<td><font size=\"1\"><I>MESSAGE FOLLOWS</I>
	</td></tr></table><HR>

	Chief Telecommunications Technician Carter,

	The next supply shuttle will arrive in about two days. Please place some of your excess electronics equipment \
	onboard the ship. We intend to sell it when it arrives back here. Ask Cargo Assistant Carter to package them, \
	and try to scratch off the Bradley-Gordon TP logo if you can.

	Thank you,
	Andersen Payad
	HSF Inc.

	<HR><font size=\"1\"><I>Recieved and printed at: Pentaline Relay Station
	Property of HSF Inc.</I></font></font>"}

/obj/item/weapon/paper/relay/note_colony5
	name = "message printout"
	info = {"<font face=\"Verdana\" color=black>
	<center><B>HSF Incorporated</B>
	<B>Long-Distance Message</B></center>
	<table></td><tr><td><font size=\"1\"><B>Message #:</B><td><font size = \"1\"><B>001011</B>
	</td><tr><td><font size=\"1\"><B>Origin:</B><td><font size=\"1\">Company Headquarters <I>(ID#001)</I>
	</td><tr><td><font size=\"1\"><B>Destination:</B><td><font size=\"1\">Rubenstein Colony <I>(ID#012)</I>
	</td><tr><td><font size=\"1\"><B>Send Date:</B><td><font size=\"1\"><B>2539-11-03</B>
	</td><tr><td><font size=\"1\">--------------------<td><font size=\"1\"><I>MESSAGE FOLLOWS</I>
	</td></tr></table><HR>

	Director Barkley,

	I'm sorry to say this, but your colony mission has been cancelled. We simply cannot afford to keep your \
	crew supplied anymore. It was already a difficult task, but with the loss of Darben-A, there's just not \
	enough income. It has become impossible. Disassemble as much of the colony as you can, though leave the \
	essentials, perhaps there's still a chance of returning someday. The first return shuttles will probably \
	arrive sometime next month. I hope you enjoyed your time on the planet.

	Thank you and good luck,
	Andersen Payad
	HSF Inc.

	<HR><font size=\"1\"><I>Recieved and printed at: Pentaline Relay Station
	Property of HSF Inc.</I></font></font>"}

/obj/item/weapon/paper/relay/note_penultimate
	name = "message printout"
	info = {"<font face=\"Verdana\" color=black>
	<center><B>HSF Incorporated</B>
	<B>Long-Distance Message</B></center>
	<table></td><tr><td><font size=\"1\"><B>Message #:</B><td><font size = \"1\"><B>001023</B>
	</td><tr><td><font size=\"1\"><B>Origin:</B><td><font size=\"1\">Company Headquarters <I>(ID#001)</I>
	</td><tr><td><font size=\"1\"><B>Destination:</B><td><font size=\"1\">Pentaline Relay Station <I>(ID#009)</I>
	</td><tr><td><font size=\"1\"><B>Send Date:</B><td><font size=\"1\"><B>2539-12-15</B>
	</td><tr><td><font size=\"1\">--------------------<td><font size=\"1\"><I>MESSAGE FOLLOWS</I>
	</td></tr></table><HR>

	Director Michael,

	I know we haven't sent a supply run in a while, but hang in there. There haven't been many freighters passing \
	through your area recently, and the ones that do are too expensive for us to rent space on. Just... hold on there, \
	alright? You may have to dig into your emergency rations. I've also been told that the plants we seeded on this planet \
	are indeed edible. I hope it doesn't come down to that, but just be aware of the option.

	Thank you and good luck,
	Andersen Payad
	HSF Inc.

	<HR><font size=\"1\"><I>Recieved and printed at: Pentaline Relay Station
	Property of HSF Inc.</I></font></font>"}

/obj/item/weapon/paper/relay/note_final
	name = "message printout"
	info = {"<font face=\"Verdana\" color=black>
	<center><B>HSF Incorporated</B>
	<B>Long-Distance Message</B></center>
	<table></td><tr><td><font size=\"1\"><B>Message #:</B><td><font size = \"1\"><B>001033</B>
	</td><tr><td><font size=\"1\"><B>Origin:</B><td><font size=\"1\">Company Headquarters <I>(ID#001)</I>
	</td><tr><td><font size=\"1\"><B>Destination:</B><td><font size=\"1\">Pentaline Relay Station <I>(ID#009)</I>
	</td><tr><td><font size=\"1\"><B>Send Date:</B><td><font size=\"1\"><B>2539-12-31</B>
	</td><tr><td><font size=\"1\" color=red><b>MESSAGE CONDITION:</b><td><font size=\"1\" color=red><B>URGENT - URGENT</B>
	</td><tr><td><font size=\"1\">--------------------<td><font size=\"1\"><I>MESSAGE FOLLOWS</I>
	</td></tr></table><HR>

	Director Michael,

	This is an urgent message. Please read carefully. Wake up the station crew, if they are not awake already.

	With the last of our funds, we have managed to buy you all a spot on a passing frieghter. It's not much space, \
	and it's a rather slow ride, but they will bring you and the rest of the Relay Station team back to SolGov space. \
	You'll probably get dropped off in one of the more backwater systems, but in any case, it is certainly better than the \
	remote system you're in now.

	The vessel will arrive in about two days. Two days, Director. You must get everything packed up and ready to \
	go by the time it reaches your location. Dismantle the power generators - they can easily be sold off once you get \
	back. Strip the parts out of the computer consoles, those are standardized, we can resell them too. \
	The telecommunications equipment is tricker, due to the recent Bradley-Gordon T.P. scandal... in any case, \
	prioritize the first two. Note that the transport is tight on space, and we cannot afford to send another one \
	all the way out there. To be honest, Michael, we can't really afford to do anything.

	Once that's done... I don't know. Gather the crew, take one last look at the facility, and eat whatever's left in the \
	kitchen. I'm afraid you all probably won't be seeing the Relay Station again.

	Thank you for everything, and good luck, Director.

	--
	Andersen Payad
	HSF Inc.

	<HR><font size=\"1\"><I>Recieved and printed at: Pentaline Relay Station
	Property of HSF Inc.

	<b>Message concluded; commencing console shutdown.</b></I></font></font>"}