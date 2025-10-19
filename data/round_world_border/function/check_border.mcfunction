$execute as @a at @s unless data storage round_world_border:data {disable_warning: 1b} positioned $(x) ~ $(z) if entity @s[distance=$(warning_distance)..] unless entity @s[distance=$(radius)..] at @s run function round_world_border:border_particle with storage round_world_border:data
$execute as @a at @s positioned $(x) ~ $(z) if entity @s[distance=$(radius)..] at @s run function round_world_border:move_player with storage round_world_border:data


$execute positioned $(x) ~ $(z) as @e[type=ender_pearl, distance=$(radius)..] run kill @s