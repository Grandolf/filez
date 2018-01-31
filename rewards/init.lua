minetest.register_craftitem("rewards:sick", {
	discription = "Odd Coin",
	inventory_image = "green.png",
	on_use = function (itemstack, player, pointed_thing)
		-- Throw fire
		local pos = player:getpos()
		local vel = player:get_look_dir()

		local rshift = {x = vel.z/8, z = -vel.x/8, y = 0}

		local minp = {x=pos.x, y=pos.y+1.6, z=pos.z}
		local maxp = {x=pos.x, y=pos.y+1.6, z=pos.z}
		minp = addvectors(minp, rshift)
		maxp = addvectors(maxp, rshift)

		local minvel = {x=vel.x*6-0.5, y=vel.y*6-0.5, z=vel.z*6-0.5}
		local maxvel = {x=vel.x*6+0.5, y=vel.y*6+0.5, z=vel.z*6+0.5}

		minetest.add_particlespawner(900, 1.2,
			minp, maxp,
			minvel, maxvel,
			{x=0, y=0, z=0}, {x=0, y=1, z=0},
			1.2, 2,
			0.1, 1,
			false, "green.png")

		end
})


