# Part of the death compass project
# Made by: mision_thi


### Scoreboards
# Scoreboards from the death location
scoreboard objectives add dc_x dummy
scoreboard objectives add dc_y dummy
scoreboard objectives add dc_z dummy

# Scoreboards from the location of the player
scoreboard objectives add dc_px dummy
scoreboard objectives add dc_py dummy
scoreboard objectives add dc_pz dummy

scoreboard objectives add dc_death deathCount
scoreboard objectives add dc_respawn minecraft.custom:minecraft.time_since_death
scoreboard objectives add dc_respawn_pr dummy


## Scoreboards for math
scoreboard objectives add dc_math_out dummy
scoreboard objectives add dc_math_temp dummy
scoreboard objectives add dc_p_rot dummy
scoreboard objectives add dc_d_rot dummy

# Create the data storage
data modify storage mision_thi:cd CustomModelData set value [4004000,4004001,4004002,4004003,4004004,4004005,4004006,4004007,4004008,4004009,4004010,4004011,4004012,4004013,4004014,4004015,4004016,4004017,4004018,4004019,4004020,4004021,4004022,4004023,4004024,4004025,4004026,4004027,4004028,4004029,4004030,4004031]