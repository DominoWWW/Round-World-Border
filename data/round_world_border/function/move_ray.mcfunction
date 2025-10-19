execute as @s at @s run tp @s ^ ^ ^.1
scoreboard players remove @s rwb.ray 1
execute if score @s rwb.ray matches ..0 run return 1
$execute positioned $(x) ~ $(z) if entity @s[distance=..$(radius)] run return 1
function round_world_border:move_ray with storage round_world_border:data