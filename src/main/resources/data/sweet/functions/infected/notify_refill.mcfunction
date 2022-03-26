execute store result score @s infectiontimer run resource get @s sweet:infected/infection
playsound block.beacon.power_select master @s[scores={immunityrefill=0,toggle_immunity_sounds=0}] ~ ~ ~ 1 1 1
title @s actionbar ["",{"text": "Immunity Stabilizing, currently at ","color": "green","bold": true},{"score":{"name":"@s","objective":"infectiontimer"},"color": "gold","bold": true},{"text": "/180 seconds","color": "gold","bold": true}]
stopsound @s[scores={infectiontimer=180,toggle_immunity_music=0}] music minecraft:music.nether.crimson_forest
stopsound @s[scores={infectiontimer=180,toggle_immunity_music=0}] music minecraft:music.nether.basalt_deltas
stopsound @s[scores={infectiontimer=180,toggle_immunity_music=0}] music minecraft:music.nether.nether_wastes
scoreboard players set @s lowimmunityalarm 0
scoreboard players set @s immunityrefill 1