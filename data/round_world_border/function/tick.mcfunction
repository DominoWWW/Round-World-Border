execute unless data storage round_world_border:data {enable:1b} run return 1

function round_world_border:check_border with storage round_world_border:data

execute as @e[tag=rwb.kill] unless score @s rwb.kill matches -2147483648..2147483647 run scoreboard players set @s rwb.kill 100
execute as @e[tag=rwb.kill] if score @s rwb.kill matches 99 run data merge entity @s {start_interpolation:0,interpolation_duration:99,Tags:["rwb.kill"],transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players remove @e[tag=rwb.kill] rwb.kill 1
execute as @e[tag=rwb.kill] if score @s rwb.kill matches 0 run kill @s