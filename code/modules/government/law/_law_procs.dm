/client/verb/view_laws()
	set category = "Special Verbs"
	set name = "View Current Laws"
	set desc = "Allows you to view all laws. Including the bad ones."

	var/dat = list()

	dat += "<title>Current Laws</title>"

	dat += "<i>Currently, there are [presidential_laws.len] laws.</i><br>"
	dat += "<html><body>"


	//Misdemeanor Laws

	dat += "<h3>Misdemeanor Laws</h3>"
	dat += "<hr>"
	dat += "Misdemeanor Laws are known as \"petty\" laws - they don't make it to court on their own usually, they have a small fine. \
	If the paying party cannot afford the fine, there's usually a very small cell time. \
	Officers can charge the party on the spot or choose to waive it for the charged in certain circumstances."
	dat += "<br><br>"
	dat += "<hr>"
	dat += "<table align='center' bgcolor='black'  cellspacing='0' border=1><B><tr><th>ID</th><th>Name</th><th>Description</th><th>Fine</th><th>Cell Time</th><th>Notes</th></tr></B>"

	for(var/datum/law/misdemeanor/L in misdemeanor_laws)

		dat += "<tr>"

		dat += "<td width='5%' align='center' bgcolor='[L.law_color]'>[L.id]</td>"
		dat += "<td width='15%' align='center' bgcolor='[L.law_color]'><b>[L.name]</b></td>"
		dat += "</span>"

		dat += "<td width='35%' align='center'>[L.description]</td>"

		dat += "<td width='5%'  align='center'>[L.fine]</td>"
		dat += "<td width='5%'  align='center'>[L.cell_time]</td>"
		dat += "<td width='35%'  align='center'>[L.notes]</td>"

		dat += "</tr>"


	dat += "</table>"

	//Criminal Laws

	dat += "<h3>Criminal Laws</h3>"
	dat += "<hr>"
	dat += "Criminal law are laws that are serious enough to be taken to court and can be contested. These charges cannot be \
	waived by a police officer and are treated seriously."
	dat += "<br><br>"
	dat += "<hr>"
	dat += "<table align='center' bgcolor='black' cellspacing='0' border=1><B><tr><th>ID</th><th>Name</th><th>Description</th><th>Fine</th><th>Cell Time</th><th>Notes</th></tr></B>"

	for(var/datum/law/criminal/C in criminal_laws)

		dat += "<tr>"



		dat += "<td width='5%' align='center' bgcolor='[C.law_color]'>[C.id]</td>"
		dat += "<td width='15%' align='center' bgcolor='[C.law_color]'><b>[C.name]</b></td>"
		dat += "</span>"

		dat += "<td width='35%' align='center'>[C.description]</td>"

		dat += "<td width='5%'  align='center'>[C.fine]</td>"
		dat += "<td width='5%'  align='center'>[C.cell_time]</td>"
		dat += "<td width='35%'  align='center'>[C.notes]</td>"

		dat += "</tr>"

	dat += "</table>"

	//Major Laws

	dat += "<h3>Major Laws</h3>"
	dat += "<hr>"
	dat += "Major crimes are some of the most serious types of law violations. \
	They are almost always taken to court. All major crimes, current and future, include a mandatory fine that must be paid on the spot or as soon as possible by the felon, regardless of their plea."
	dat += "<br><br>"
	dat += "<hr>"
	dat += "<table align='center' bgcolor='black' cellspacing='0' border=1><B><tr><th>ID</th><th>Name</th><th>Description</th><th>Fine</th><th>Cell Time</th><th>Notes</th></tr></B>"

	for(var/datum/law/major/M in major_laws)

		dat += "<tr>"



		dat += "<td width='5%' align='center' bgcolor='[M.law_color]'>[M.id]</td>"
		dat += "<td width='15%' align='center' bgcolor='[M.law_color]'><b>[M.name]</b></td>"
		dat += "</span>"

		dat += "<td width='35%' align='center'>[M.description]</td>"

		dat += "<td width='5%'  align='center'>[M.fine]</td>"
		dat += "<td width='5%'  align='center'>[M.cell_time]</td>"
		dat += "<td width='35%'  align='center'>[M.notes]</td>"

		dat += "</tr>"

	dat += "</table>"


	//Capital Laws

	dat += "<h3>Capital Laws</h3>"
	dat += "<hr>"
	dat += "Capital Crimes are the most serious of all crimes. Some may even carry the death penalty if a judge rules it. \
	They do not have a cell time as they are always lifetime imprisonment/detention."
	dat += "<br><br>"
	dat += "<hr>"
	dat += "<table align='center' bgcolor='black' cellspacing='0' border=1><B><tr><th>ID</th><th>Name</th><th>Description</th><th>Cell Time</th><th>Notes</th></tr></B>"

	for(var/datum/law/capital/T in capital_laws)


		dat += "<tr>"



		dat += "<td width='5%' align='center' bgcolor='[T.law_color]'>[T.id]</td>"
		dat += "<td width='15%' align='center' bgcolor='[T.law_color]'><b>[T.name]</b></td>"
		dat += "</span>"

		dat += "<td width='35%' align='center'>[T.description]</td>"

		dat += "<td width='10%' align='center'><b>Permanent</b></td>"
		dat += "<td width='35%' align='center'>[T.notes]</td>"

		dat += "</tr>"


	dat += "</table>"



	dat += "</body></html>"

	var/datum/browser/popup = new(usr, "Laws", "Presidential Laws", 640, 600, src)
	popup.set_content(jointext(dat,null))
	popup.open()


