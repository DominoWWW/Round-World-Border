$execute store success storage round_world_border:data chunk byte 1 run forceload query $(x) $(z)
$forceload add $(x) $(z)
$summon marker $(x) ~ $(z) {Tags:["rwb.particle"]}
execute at @n[tag=rwb.particle] run tp @n[tag=rwb.particle] ~ ~ ~ facing entity @s
$execute at @n[tag=rwb.particle] run tp @n[tag=rwb.particle] ^ ^ ^$(radius)

execute as @e[tag=rwb.particle] at @s run summon item_display ^ ^5 ^ {start_interpolation:0,interpolation_duration:100,Tags:["rwb.kill"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,1f]},item:{id:"minecraft:barrier",count:1}}
execute as @e[tag=rwb.kill] unless score @s rwb.kill matches -2147483648..2147483647 run data modify entity @s Rotation set from entity @n[tag=rwb.particle] Rotation

execute as @e[tag=rwb.kill] at @s unless score @s rwb.kill matches -2147483648..2147483647 run execute store result storage round_world_border:data particle_x double 2 run random value -10..10
execute as @e[tag=rwb.kill] at @s unless score @s rwb.kill matches -2147483648..2147483647 run execute store result storage round_world_border:data particle_y double 2 run random value -10..10

$execute as @e[tag=rwb.kill] at @s unless score @s rwb.kill matches -2147483648..2147483647 run tp @s ^$(particle_x) ^$(particle_y) ^


kill @e[tag=rwb.particle]

$execute if data storage round_world_border:data {chunk:0b} run forceload remove $(x) $(z)