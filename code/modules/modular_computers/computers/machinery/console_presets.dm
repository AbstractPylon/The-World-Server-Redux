/obj/machinery/modular_computer/console/preset/
	// Can be changed to give devices specific hardware
	var/_has_id_slot = 0
	var/_has_printer = 1
	var/_has_battery = 0

/obj/machinery/modular_computer/console/preset/New()
	. = ..()
	if(!cpu)
		return
	if(_has_id_slot)
		cpu.card_slot = new/obj/item/weapon/computer_hardware/card_slot(cpu)
	if(_has_printer)
		cpu.nano_printer = new/obj/item/weapon/computer_hardware/nano_printer(cpu)
	if(_has_battery)
		cpu.battery_module = new/obj/item/weapon/computer_hardware/battery_module/super(cpu)
	install_programs()

// Override in child types to install preset-specific programs.
/obj/machinery/modular_computer/console/preset/proc/install_programs()
	return

// ===== ENGINEERING CONSOLE =====
/obj/machinery/modular_computer/console/preset/engineering
	 console_department = "Engineering"
	 desc = "A stationary computer. This one comes preloaded with engineering programs."

/obj/machinery/modular_computer/console/preset/engineering/install_programs()
	cpu.hard_drive.store_file(new/datum/computer_file/program/power_monitor())
	cpu.hard_drive.store_file(new/datum/computer_file/program/alarm_monitor())
	cpu.hard_drive.store_file(new/datum/computer_file/program/atmos_control())
	cpu.hard_drive.store_file(new/datum/computer_file/program/rcon_console())
	cpu.hard_drive.store_file(new/datum/computer_file/program/wordprocessor())
	cpu.hard_drive.store_file(new/datum/computer_file/program/email_client())
	cpu.hard_drive.store_file(new/datum/computer_file/program/nt_explorer())

// Administrator

/obj/machinery/modular_computer/console/preset/sysadmin/install_programs()
	..()
	cpu.hard_drive.store_file(new/datum/computer_file/program/chatclient())
	cpu.hard_drive.store_file(new/datum/computer_file/program/email_client())
	cpu.hard_drive.store_file(new/datum/computer_file/program/email_administration())
	cpu.hard_drive.store_file(new/datum/computer_file/program/nt_explorer())

// ===== MEDICAL CONSOLE =====
/obj/machinery/modular_computer/console/preset/medical
	 console_department = "Medbay"
	 desc = "A stationary computer. This one comes preloaded with medical programs."

/obj/machinery/modular_computer/console/preset/medical/install_programs()
	cpu.hard_drive.store_file(new/datum/computer_file/program/suit_sensors())
	cpu.hard_drive.store_file(new/datum/computer_file/program/wordprocessor())
	cpu.hard_drive.store_file(new/datum/computer_file/program/email_client())
	cpu.hard_drive.store_file(new/datum/computer_file/program/nt_explorer())

// ===== RESEARCH CONSOLE =====
/obj/machinery/modular_computer/console/preset/research
	 console_department = "Science"
	 desc = "A stationary computer. This one comes preloaded with research programs."

/obj/machinery/modular_computer/console/preset/research/install_programs()
	cpu.hard_drive.store_file(new/datum/computer_file/program/ntnetmonitor())
	cpu.hard_drive.store_file(new/datum/computer_file/program/nttransfer())
	cpu.hard_drive.store_file(new/datum/computer_file/program/chatclient())
	cpu.hard_drive.store_file(new/datum/computer_file/program/wordprocessor())
	cpu.hard_drive.store_file(new/datum/computer_file/program/email_client())
	cpu.hard_drive.store_file(new/datum/computer_file/program/nt_explorer())

// ===== COMMAND CONSOLE =====
/obj/machinery/modular_computer/console/preset/command
	 console_department = "Command"
	 desc = "A stationary computer. This one comes preloaded with command programs."
	 _has_id_slot = 1

/obj/machinery/modular_computer/console/preset/command/install_programs()
	cpu.hard_drive.store_file(new/datum/computer_file/program/comm())
	cpu.hard_drive.store_file(new/datum/computer_file/program/chatclient())
	cpu.hard_drive.store_file(new/datum/computer_file/program/nttransfer())
	cpu.hard_drive.store_file(new/datum/computer_file/program/ntnetmonitor())
	cpu.hard_drive.store_file(new/datum/computer_file/program/wordprocessor())
	cpu.hard_drive.store_file(new/datum/computer_file/program/card_mod())
	cpu.hard_drive.store_file(new/datum/computer_file/program/email_client())
	cpu.hard_drive.store_file(new/datum/computer_file/program/nt_explorer())
	cpu.hard_drive.store_file(new/datum/computer_file/program/digitalwarrant())
	cpu.hard_drive.store_file(new/datum/computer_file/program/candidate_registration())
	cpu.hard_drive.store_file(new/datum/computer_file/program/business_manager())

// ===== SECURITY CONSOLE =====
/obj/machinery/modular_computer/console/preset/security
	 console_department = "Security"
	 desc = "A stationary computer. This one comes preloaded with security programs."

/obj/machinery/modular_computer/console/preset/security/install_programs()
	cpu.hard_drive.store_file(new/datum/computer_file/program/chatclient())
	cpu.hard_drive.store_file(new/datum/computer_file/program/nttransfer())
	cpu.hard_drive.store_file(new/datum/computer_file/program/ntnetmonitor())
	cpu.hard_drive.store_file(new/datum/computer_file/program/wordprocessor())
	cpu.hard_drive.store_file(new/datum/computer_file/program/digitalwarrant())
	cpu.hard_drive.store_file(new/datum/computer_file/program/email_client())
	cpu.hard_drive.store_file(new/datum/computer_file/program/nt_explorer())

// ===== CIVILIAN CONSOLE =====
/obj/machinery/modular_computer/console/preset/civilian
	 console_department = "Civilian"
	 desc = "A stationary computer. This one comes preloaded with generic programs."

/obj/machinery/modular_computer/console/preset/civilian/install_programs()
	cpu.hard_drive.store_file(new/datum/computer_file/program/chatclient())
	cpu.hard_drive.store_file(new/datum/computer_file/program/nttransfer())
	cpu.hard_drive.store_file(new/datum/computer_file/program/wordprocessor())
	cpu.hard_drive.store_file(new/datum/computer_file/program/email_client())
	cpu.hard_drive.store_file(new/datum/computer_file/program/nt_explorer())
	cpu.hard_drive.store_file(new/datum/computer_file/program/library())
	cpu.hard_drive.store_file(new/datum/computer_file/program/candidate_registration())
	cpu.hard_drive.store_file(new/datum/computer_file/program/business_manager())

// ===== GOVERNMENT CONSOLE =====
/obj/machinery/modular_computer/console/preset/government
	 console_department = "Government"
	 desc = "A stationary computer. This one comes preloaded with government programs."

/obj/machinery/modular_computer/console/preset/government/install_programs()
	cpu.hard_drive.store_file(new/datum/computer_file/program/comm())
	cpu.hard_drive.store_file(new/datum/computer_file/program/chatclient())
	cpu.hard_drive.store_file(new/datum/computer_file/program/nttransfer())
	cpu.hard_drive.store_file(new/datum/computer_file/program/wordprocessor())
	cpu.hard_drive.store_file(new/datum/computer_file/program/email_client())
	cpu.hard_drive.store_file(new/datum/computer_file/program/nt_explorer())
	cpu.hard_drive.store_file(new/datum/computer_file/program/library())
	cpu.hard_drive.store_file(new/datum/computer_file/program/digitalwarrant())
	cpu.hard_drive.store_file(new/datum/computer_file/program/candidate_registration())
	cpu.hard_drive.store_file(new/datum/computer_file/program/presidential_portal())
	cpu.hard_drive.store_file(new/datum/computer_file/program/ntnetmonitor())
	cpu.hard_drive.store_file(new/datum/computer_file/program/email_administration())
	cpu.hard_drive.store_file(new/datum/computer_file/program/business_manager())
