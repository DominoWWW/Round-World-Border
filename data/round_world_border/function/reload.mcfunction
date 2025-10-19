
execute if score $warning_distance rwb.config matches 65.. run tellraw @s ["",{"text":"Warning distance cannot be greater than 64 blocks.","color":"red"}]
execute if score $warning_distance rwb.config matches 65.. run scoreboard players set $warning_distance rwb.config 64
execute if score $radius rwb.config matches ..63 run tellraw @s ["",{"text":"Radius cannot be less than 64 blocks.","color":"red"}]
execute if score $radius rwb.config matches ..63 run scoreboard players set $radius rwb.config 64
execute if score $warning_distance rwb.config matches ..-1 run tellraw @s ["",{"text":"Warning distance cannot be less than 0 blocks.","color":"red"}]
execute if score $warning_distance rwb.config matches ..-1 run scoreboard players set $warning_distance rwb.config 0
execute if score $warning_distance rwb.config > $radius rwb.config run tellraw @s ["",{"text":"Warning distance cannot higher than radius.","color":"red"}]
execute if score $warning_distance rwb.config > $radius rwb.config run scoreboard players operation $warning_distance rwb.config = $radius rwb.config

scoreboard players operation $warning_distance_from_center rwb.config = $radius rwb.config
scoreboard players operation $warning_distance_from_center rwb.config -= $warning_distance rwb.config

scoreboard players operation $warning_distance_from_center_nether rwb.config = $radius rwb.config
scoreboard players set 8 rwb.config 8
scoreboard players operation $warning_distance_from_center_nether rwb.config /= 8 rwb.config 
scoreboard players reset 8 rwb.config
scoreboard players operation $warning_distance_from_center_nether rwb.config -= $warning_distance rwb.config

execute store result storage round_world_border:data x int 1 run scoreboard players get $x rwb.config
execute store result storage round_world_border:data z int 1 run scoreboard players get $z rwb.config
execute store result storage round_world_border:data radius int 1 run scoreboard players get $radius rwb.config
execute store result storage round_world_border:data warning_distance int 1 run scoreboard players get $warning_distance_from_center rwb.config
execute store result storage round_world_border:data nether_x int 0.125 run scoreboard players get $x rwb.config
execute store result storage round_world_border:data nether_z int 0.125 run scoreboard players get $z rwb.config
execute store result storage round_world_border:data nether_radius int 0.125 run scoreboard players get $radius rwb.config
execute store result storage round_world_border:data nether_warning_distance int 1 run scoreboard players get $nether_warning_distance_from_center rwb.config

data merge storage round_world_border:data {particle_x:0, particle_y:0}