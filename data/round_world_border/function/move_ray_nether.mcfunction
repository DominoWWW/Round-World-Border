#execute at @s run particle flame ~ ~ ~ 0 0 0 0 1 force @a
execute as @s at @s run tp @s ^ ^ ^.1
scoreboard players remove @s rwb.ray 1
execute if score @s rwb.ray matches ..0 run return 1
$execute positioned $(nether_x) ~ $(nether_z) if entity @s[distance=..$(nether_radius)] run return 1
function round_world_border:move_ray_nether with storage round_world_border:data