$execute as @a[nbt={Dimension:"minecraft:overworld"}] at @s positioned $(x) ~ $(z) if entity @s[distance=$(warning_distance)..] unless entity @s[distance=$(radius)..] at @s run function round_world_border:border_particle with storage round_world_border:data
$execute as @a[nbt={Dimension:"minecraft:overworld"}] at @s positioned $(x) ~ $(z) if entity @s[distance=$(radius)..] at @s run function round_world_border:move_player with storage round_world_border:data

$execute in minecraft:the_nether as @a[nbt={Dimension:"minecraft:the_nether"}] at @s positioned $(nether_x) ~ $(nether_z) if entity @s[distance=$(nether_warning_distance)..] unless entity @s[distance=$(nether_radius)..] at @s run function round_world_border:border_particle_nether with storage round_world_border:data
$execute in minecraft:the_nether as @a[nbt={Dimension:"minecraft:the_nether"}] at @s positioned $(nether_x) ~ $(nether_z) if entity @s[distance=$(nether_radius)..] at @s run function round_world_border:move_player_nether with storage round_world_border:data

$execute in minecraft:overworld positioned $(x) ~ $(z) as @e[type=ender_pearl, distance=$(radius)..] run kill @s
$execute in minecraft:the_nether positioned $(nether_x) ~ $(nether_z) as @e[type=ender_pearl, distance=$(nether_radius)..] run kill @s