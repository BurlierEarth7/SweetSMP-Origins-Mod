execute store result score @s infectiontimer run resource get @s sweet:infected/infection
title @s actionbar ["",{"score":{"name":"@s","objective":"infectiontimer"},"color": "yellow","bold": true},{"text": "/180 seconds","color": "yellow","bold": true}]
playsound block.beacon.deactivate master @s[scores={immunityrefill=1,toggle_immunity_sounds=0}] ~ ~ ~ 1 1 1
scoreboard players set @s immunityrefill 0