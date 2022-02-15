# Part of the death compass project
# Made by: mision_thi

execute store result score @s dc_x run data get entity @s SelectedItem.tag.dc_x
execute store result score @s dc_y run data get entity @s SelectedItem.tag.dc_y
execute store result score @s dc_z run data get entity @s SelectedItem.tag.dc_z

###
# Place the cloud at the death place
execute rotated ~ 0 run summon area_effect_cloud ~ ~ ~ {Particle:"block stone",NoGravity:1b,Age:2147483647,Tags:["cd_cloud_death_pos"]}
execute store result entity @e[tag=cd_cloud_death_pos,limit=1] Pos[0] double 1 run scoreboard players get @s dc_x
execute store result entity @e[tag=cd_cloud_death_pos,limit=1] Pos[1] double 1 run scoreboard players get @s dc_y
execute store result entity @e[tag=cd_cloud_death_pos,limit=1] Pos[2] double 1 run scoreboard players get @s dc_z

# Sumon cloud that looks at death place
execute rotated ~ 0 run summon area_effect_cloud ~ ~ ~ {Particle:"block stone",NoGravity:1b,Age:2147483647,Tags:["cd_cloud"]}
execute as @e[tag=cd_cloud] at @s facing entity @e[tag=cd_cloud_death_pos] feet run tp @s ~ ~ ~ ~ 0



# Get players cardinal direction
execute store result score @s dc_math_temp run data get entity @s Rotation[0] 1000
execute as @s at @s run function death_compass:dc_math/rotation_to_dire
scoreboard players operation @s dc_p_rot = @s dc_math_out

# Get place of deaths cardinal direction
execute store result score @s dc_math_temp run data get entity @e[tag=cd_cloud,limit=1] Rotation[0] 1000
execute as @s at @s run function death_compass:dc_math/rotation_to_dire
scoreboard players operation @s dc_d_rot = @s dc_math_out

# Logic to see where to point
execute as @s at @s if score @s dc_p_rot matches 0..7 run function death_compass:dc_math/compass_check/0-7
execute as @s at @s if score @s dc_p_rot matches 8..15 run function death_compass:dc_math/compass_check/8-15
execute as @s at @s if score @s dc_p_rot matches 16..23 run function death_compass:dc_math/compass_check/16-23
execute as @s at @s if score @s dc_p_rot matches 24..31 run function death_compass:dc_math/compass_check/24-31

# Kill clouds
kill @e[tag=cd_cloud_death_pos]
kill @e[tag=cd_cloud]


