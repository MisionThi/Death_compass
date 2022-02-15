# Part of the death compass project
# Made by: mision_thi


### Place shulker and place base item
execute as @s at @s run setblock ~ -64 ~ minecraft:yellow_shulker_box
execute as @s at @s run item replace block ~ -64 ~ container.0 with minecraft:knowledge_book

### Edit item
# give a tag to see if the knowledge_book is a dc
data modify block ~ -64 ~ Items[0].tag.dc set value 1

# give the death location to the item
execute store result block ~ -64 ~ Items[0].tag.dc_x int 1 run scoreboard players get @s dc_x
execute store result block ~ -64 ~ Items[0].tag.dc_y int 1 run scoreboard players get @s dc_y
execute store result block ~ -64 ~ Items[0].tag.dc_z int 1 run scoreboard players get @s dc_z

### Give item
loot replace entity @s weapon.mainhand mine ~ -64 ~ minecraft:air{drop_contents:1b}

### Remove shulker
execute as @s at @s run setblock ~ -64 ~ minecraft:bedrock

# Change the name of the item
item modify entity @s weapon.mainhand death_compass:name

#give @s knowledge_book{dc_id:1, dc:1} 1