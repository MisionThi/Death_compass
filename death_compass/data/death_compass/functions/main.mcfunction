# Part of the death compass project
# Made by: mision_thi

### Players respawn protection (for getting correct death location)
execute as @a at @s unless entity @s[scores={dc_respawn_pr=0..}] run scoreboard players set @s dc_respawn_pr 0

### When player dies
execute as @a at @s if score @s dc_death matches 1 if score @s dc_respawn_pr matches 0 run function death_compass:get_location/death 
execute as @a at @s if score @s dc_death matches 1 if score @s dc_respawn_pr matches 0 run scoreboard players set @s dc_respawn_pr 1
execute as @a at @s if score @s dc_death matches 1 if score @s dc_respawn matches 1.. run function death_compass:give_dc
execute as @a at @s if score @s dc_death matches 1 if score @s dc_respawn matches 1.. run scoreboard players set @s dc_respawn_pr 0
execute as @a at @s if score @s dc_death matches 1 if score @s dc_respawn matches 1.. run scoreboard players set @s dc_death 0


### death_compass in mainhand?
execute as @a at @s if data entity @s SelectedItem.tag.dc run function death_compass:dc_math/main