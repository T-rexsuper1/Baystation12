/datum/gear/accessory/tags
	display_name = "dog tags"
	path = /obj/item/clothing/accessory/badge/dog_tags

/datum/gear/accessory/pilot_pin
	display_name = "pilot's qualification pin"
	path = /obj/item/clothing/accessory/solgov/specialty/pilot
	allowed_roles = list(/datum/job/captain, /datum/job/hop, /datum/job/adjutant, /datum/job/exploration_leader, /datum/job/explorer_pilot)

/datum/gear/accessory/armband_security
	allowed_roles = SECURITY_ROLES

/datum/gear/accessory/armband_cargo
	allowed_roles = SUPPLY_ROLES

/datum/gear/accessory/armband_medical
	allowed_roles = MEDICAL_ROLES

/datum/gear/accessory/armband_emt
	allowed_roles = list(/datum/job/doctor, /datum/job/doctor_trainee, /datum/job/explorer_medic)

/datum/gear/accessory/armband_engineering
	allowed_roles = ENGINEERING_ROLES

/datum/gear/accessory/armband_hydro
	allowed_roles = list(/datum/job/rd, /datum/job/senior_scientist, /datum/job/scientist, /datum/job/scientist_assistant, /datum/job/assistant)

/datum/gear/accessory/ntaward
	allowed_roles = NANOTRASEN_ROLES
	allowed_branches = list(/datum/mil_branch/employee)

/datum/gear/accessory/ntaward_sci
	allowed_roles = RESEARCH_ROLES
	allowed_branches = list(/datum/mil_branch/employee)
	allowed_skills = list(SKILL_SCIENCE = SKILL_EXPERT)

/datum/gear/accessory/stethoscope
	allowed_roles = STERILE_ROLES

/datum/gear/storage/brown_vest
	allowed_roles = list(/datum/job/chief_engineer, /datum/job/senior_engineer, /datum/job/engineer, /datum/job/engineer_trainee, /datum/job/explorer_engineer, /datum/job/roboticist, /datum/job/qm, /datum/job/cargo_tech,
						/datum/job/cargo_assistant, /datum/job/mining, /datum/job/janitor, /datum/job/scientist_assistant, /datum/job/submap/merchant, /datum/job/submap/merchant_trainee)

/datum/gear/storage/black_vest
	allowed_roles = list(/datum/job/hos, /datum/job/warden, /datum/job/detective, /datum/job/officer, /datum/job/submap/merchant, /datum/job/submap/merchant_trainee, /datum/job/security_assistant)

/datum/gear/storage/white_vest
	allowed_roles = list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/doctor, /datum/job/doctor_trainee, /datum/job/explorer_medic, /datum/job/roboticist, /datum/job/submap/merchant, /datum/job/submap/merchant_trainee)

/datum/gear/storage/brown_drop_pouches
	allowed_roles = list(/datum/job/chief_engineer, /datum/job/senior_engineer, /datum/job/engineer, /datum/job/engineer_trainee, /datum/job/roboticist, /datum/job/qm, /datum/job/cargo_tech,
						/datum/job/cargo_assistant, /datum/job/mining, /datum/job/janitor, /datum/job/scientist_assistant, /datum/job/submap/merchant)

/datum/gear/storage/black_drop_pouches
	allowed_roles = list(/datum/job/hos, /datum/job/warden, /datum/job/detective, /datum/job/officer, /datum/job/submap/merchant, /datum/job/security_assistant)

/datum/gear/storage/white_drop_pouches
	allowed_roles = list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/doctor, /datum/job/doctor_trainee, /datum/job/explorer_medic, /datum/job/roboticist, /datum/job/submap/merchant, /datum/job/submap/merchant_trainee, /datum/job/chemist)

/datum/gear/head/kittyears
	allowed_roles = RESTRICTED_ROLES

/datum/gear/accessory/ftupin
	allowed_roles = list(/datum/job/submap/merchant, /datum/job/submap/merchant_trainee, /datum/job/assistant)
	allowed_branches = list(/datum/mil_branch/civilian)

/datum/gear/passport/scg
	display_name = "passports selection - SCG"
	description = "A selection of SCG passports."
	path = /obj/item/passport/scg
	flags = GEAR_HAS_TYPE_SELECTION
	custom_setup_proc = /obj/item/passport/proc/set_info
	cost = 0

/datum/gear/passport/iccg
	display_name = "passports selection - ICCG"
	description = "A selection of ICCG passports."
	path = /obj/item/passport/iccg
	flags = GEAR_HAS_TYPE_SELECTION
	custom_setup_proc = /obj/item/passport/proc/set_info
	cost = 0

/datum/gear/passport
	display_name = "passports selection - independent"
	description = "A selection of independent regions passports."
	path = /obj/item/passport/independent
	flags = GEAR_HAS_SUBTYPE_SELECTION
	custom_setup_proc = /obj/item/passport/proc/set_info
	cost = 0
