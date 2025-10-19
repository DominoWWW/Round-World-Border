summon marker ~ ~ ~ {Tags:["rwb.move"]}
execute as @e[tag=rwb.move] unless score @s rwb.ray matches -2147483648..2147483647 run scoreboard players set @e[tag=rwb.move] rwb.ray 200
$execute as @n[tag=rwb.move] at @s run tp @n[tag=rwb.move] ~ ~ ~ facing $(nether_x) ~ $(nether_z)
execute as @n[tag=rwb.move] at @s run function round_world_border:move_ray_nether with storage round_world_border:data
execute at @n[tag=rwb.move] run tp @s ~ ~ ~

kill @e[tag=rwb.move]
