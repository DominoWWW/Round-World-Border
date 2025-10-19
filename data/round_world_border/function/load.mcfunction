scoreboard objectives add rwb.config dummy
scoreboard objectives add rwb.kill dummy
scoreboard objectives add rwb.ray dummy

execute unless score $x rwb.config matches -2147483648..2147483647 run scoreboard players set $x rwb.config 0
execute unless score $z rwb.config matches -2147483648..2147483647 run scoreboard players set $z rwb.config 0
execute unless score $radius rwb.config matches -2147483648..2147483647 run scoreboard players set $radius rwb.config 5000
execute unless score $warning_distance rwb.config matches -2147483648..2147483647 run scoreboard players set $warning_distance rwb.config 50

execute unless data storage round_world_border:data x run execute store result storage round_world_border:data x int 1 run scoreboard players get $x rwb.config
execute unless data storage round_world_border:data z run execute store result storage round_world_border:data z int 1 run scoreboard players get $z rwb.config
execute unless data storage round_world_border:data radius run execute store result storage round_world_border:data radius int 1 run scoreboard players get $radius rwb.config
execute unless data storage round_world_border:data warning_distance run execute store result storage round_world_border:data warning_distance int 1 run scoreboard players get $warning_distance rwb.config

function round_world_border:reload