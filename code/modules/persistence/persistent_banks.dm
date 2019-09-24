
/mob/living/carbon/human/proc/save_character_money()

	mind.initial_account.money = Clamp(mind.initial_account.money, -999999, 999999)


	mind.prefs.expenses = mind.initial_account.expenses

	mind.prefs.money_balance = mind.initial_account.money
	mind.prefs.bank_pin = mind.initial_account.remote_access_pin
	mind.prefs.bank_no = mind.initial_account.account_number

	return 1


/datum/money_account/proc/make_persistent()
	var/path = "data/persistent/bank_accounts/[account_number].sav"
	if(fexists(path))		return 0

	var/savefile/S = new /savefile(path)