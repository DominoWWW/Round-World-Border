
execute if score $warning_distance rwb.config matches 65.. run tellraw @s ["",{"text":"Warning distance cannot be greater than 64 blocks.","color":"red"}]
execute if score $warning_distance rwb.config matches 65.. run scoreboard players set $warning_distance rwb.config 64
execute if score $warning_distance rwb.config matches ..-2 run tellraw @s ["",{"text":"Warning distance cannot be less than -1 blocks.","color":"red"}]
execute if score $warning_distance rwb.config matches ..-2 run scoreboard players set $warning_distance rwb.config -1
execute if score $warning_distance rwb.config > $radius rwb.config run tellraw @s ["",{"text":"Warning distance cannot higher than radius.","color":"red"}]
execute if score $warning_distance rwb.config > $radius rwb.config run scoreboard players operation $warning_distance rwb.config = $radius rwb.config

scoreboard players operation $warning_distance_from_center rwb.config = $radius rwb.config
scoreboard players operation $warning_distance_from_center rwb.config -= $warning_distance rwb.config

execute store result storage round_world_border:data x int 1 run scoreboard players get $x rwb.config
execute store result storage round_world_border:data z int 1 run scoreboard players get $z rwb.config
execute store result storage round_world_border:data radius int 1 run scoreboard players get $radius rwb.config
execute store result storage round_world_border:data warning_distance int 1 run scoreboard players get $warning_distance_from_center rwb.config

data modify storage round_world_border:data disable_warning set value 0b
execute if score $warning_distance rwb.config matches -1 run data modify storage round_world_border:data disable_warning set value 1b
