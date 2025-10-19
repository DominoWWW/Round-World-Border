data merge storage round_world_border:data {enable:1b}

scoreboard objectives add rwb.config dummy
scoreboard objectives add rwb.kill dummy
scoreboard objectives add rwb.ray dummy

execute unless score $x rwb.config matches -2147483648..2147483647 run scoreboard players set $x rwb.config 0
execute unless score $z rwb.config matches -2147483648..2147483647 run scoreboard players set $z rwb.config 0
execute unless score $radius rwb.config matches -2147483648..2147483647 run scoreboard players set $radius rwb.config 5000
execute unless score $warning_distance rwb.config matches -2147483648..2147483647 run scoreboard players set $warning_distance rwb.config 50

function round_world_border:reload