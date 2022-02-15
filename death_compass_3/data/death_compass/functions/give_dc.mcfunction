# Part of the death compass project
# Made by: mision_thi

### Place shulker and place base item
execute as @s at @s run setblock ~ -64 ~ minecraft:yellow_shulker_box
execute as @s at @s if score @s dc_dimension matches 0 run item replace block ~ -64 ~ container.0 with compass{CustomModelData:4004000,LodestoneDimension:"minecraft:overworld",LodestoneTracked:0b,LodestonePos:{X:1,Y:1,Z:1}} 1
execute as @s at @s if score @s dc_dimension matches 1 run item replace block ~ -64 ~ container.0 with compass{CustomModelData:4004000,LodestoneDimension:"minecraft:the_nether",LodestoneTracked:0b,LodestonePos:{X:1,Y:1,Z:1}} 1
execute as @s at @s if score @s dc_dimension matches 2 run item replace block ~ -64 ~ container.0 with compass{CustomModelData:4004000,LodestoneDimension:"minecraft:the_end",LodestoneTracked:0b,LodestonePos:{X:1,Y:1,Z:1}} 1

### Edit item
# give a tag to see if the knowledge_book is a dc
data modify block ~ -64 ~ Items[0].tag.dc set value 1

# give the death location to the item
execute store result block ~ -64 ~ Items[0].tag.LodestonePos.X int 1 run scoreboard players get @s dc_x
execute store result block ~ -64 ~ Items[0].tag.LodestonePos.Y int 1 run scoreboard players get @s dc_y
execute store result block ~ -64 ~ Items[0].tag.LodestonePos.Z int 1 run scoreboard players get @s dc_z

### Give item
loot replace entity @s weapon.mainhand mine ~ -64 ~ minecraft:air{drop_contents:1b}

### Remove shulker
execute as @s at @s run setblock ~ -64 ~ minecraft:bedrock

# Change the name of the item
item modify entity @s weapon.mainhand death_compass:name

#give @s knowledge_book{dc_id:1, dc:1} 1