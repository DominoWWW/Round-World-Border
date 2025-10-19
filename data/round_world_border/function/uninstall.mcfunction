data remove storage round_world_border:data enable
data remove storage round_world_border:data x
data remove storage round_world_border:data z
data remove storage round_world_border:data radius
data remove storage round_world_border:data warning_distance
data remove storage round_world_border:data particle_x
data remove storage round_world_border:data particle_y
data remove storage round_world_border:data nether_x
data remove storage round_world_border:data nether_z
data remove storage round_world_border:data nether_radius
data remove storage round_world_border:data nether_warning_distance

scoreboard objectives remove rwb.config
scoreboard objectives remove rwb.kill
scoreboard objectives remove rwb.ray

kill @e[tag=rwb.kill]
kill @e[tag=rwb.move]