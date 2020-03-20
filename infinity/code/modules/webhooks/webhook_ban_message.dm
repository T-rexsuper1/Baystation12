/decl/webhook/send_ban
	id = WEBHOOK_SEND_BAN

/decl/webhook/send_ban/get_message(var/list/data)
	. = ..()

	if(!data["bantype"])
		.["content"] = "Тут должно быть сообщение о бане, но кто то вызвал вебхук вручную."
		return
	var/setter = list(
		"name" = "Администратор",
		"value" = data["setter"],
		"inline" = 1
	)
	var/banned = list(
		"name" = "Забанен",
		"value" = data["banned"],
		"inline" = 1
	)
	var/reason = list(
		"name" = "Причина",
		"value" = data["reason"]
	)
	var/list/desc = list(
		"color" = COLOR_WEBHOOK_BAN,
		"footer" = list(
			"icon_url" = "https://cdn.discordapp.com/emojis/244791612268347392.png?v=1",	// :inf: emoji
			"text" = "За обжалованием обращаться в #подача_заявок"
		),
		"thumbnail" = list(
			"url" = "https://cdn.discordapp.com/emojis/314350489020137474.png?v=1"			// :ban: emoji
		)
	)
	switch(data["bantype"])
		if(BANTYPE_PERMA)
			desc.Add(list(
				"title" = "ПЕРМАНЕНТНАЯ БЛОКИРОВКА",
				"description" = "Пользователь был забанен навсегда",
				"fields" = list(
					banned, setter, reason
				)
			))
		if(BANTYPE_TEMP)
			var/duration = list(
				"name" = "Длительность",
				"value" = data["duration"]
			)
			desc.Add(list(
				"title" = "ВРЕМЕННАЯ БЛОКИРОВКА",
				"description" = "Пользователь был забанен на время",
				"fields" = list(
					banned, setter, duration, reason
				)
			))
		if(BANTYPE_JOB_PERMA)
			var/banned_jobs = list(
				"name" = "Заблокированные профессии",
				"value" = data["banned_jobs"],
				"inline" = 1
			)
			desc.Add(list(
				"title" = "ПЕРМАНЕНТНАЯ БЛОКИРОВКА ПРОФЕССИЙ",
				"description" = "Пользователь навсегда потерял эти роли",
				"fields" = list(
					banned, setter, banned_jobs, reason
				)
			))
		if(BANTYPE_JOB_TEMP)
			var/duration = list(
				"name" = "Длительность",
				"value" = data["duration"],
				"inline" = 1
			)
			var/banned_jobs = list(
				"name" = "Заблокированные профессии",
				"value" = data["banned_jobs"],
				"inline" = 1
			)
			desc.Add(list(
				"title" = "ВРЕМЕННАЯ БЛОКИРОВКА ПРОФЕССИЙ",
				"description" = "Пользователь потерял эти роли на время",
				"fields" = list(
					banned, setter, duration, banned_jobs, reason
				)
			))
	.["embeds"] = list(desc)
