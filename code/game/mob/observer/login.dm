/mob/observer/Login()
	..()
	if (!src.start)
		src.start = 1
		var/A = locate(/area/start)
		var/list/L = list(  )
		for(var/turf/T in A)
			if(T.isempty() )
				L += T
		src.loc = pick(L)
	src.client.screen = null
	if (!isturf(src.loc))
		src.client.eye = src.loc
		src.client.perspective = EYE_PERSPECTIVE
	return