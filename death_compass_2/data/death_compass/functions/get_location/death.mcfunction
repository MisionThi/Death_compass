# Part of the death compass project
# Made by: mision_thi

### position of the death
execute store result score @s dc_x run data get entity @s Pos[0]
execute store result score @s dc_y run data get entity @s Pos[1]
execute store result score @s dc_z run data get entity @s Pos[2]

execute as @s at @s if predicate death_compass:overworld run scoreboard players set @s dc_dimension 0
execute as @s at @s if predicate death_compass:the_nether run scoreboard players set @s dc_dimension 1
execute as @s at @s if predicate death_compass:the_end run scoreboard players set @s dc_dimension 2