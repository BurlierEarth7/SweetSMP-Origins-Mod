execute store result score @s infectiontimer run resource get @s sweet:infected/infection
title @s actionbar ["",{"score":{"name":"@s","objective":"infectiontimer"},"color": "dark_red","bold": true},{"text": "/180 seconds","color": "dark_red","bold": true}]
scoreboard players add @s[scores={toggle_30_second_alarm=0}] lowimmunityalarm 1
execute as @s[scores={lowimmunityalarm=10}] run playsound ui.button.click master @s ~ ~ ~ 1 2 1
execute as @s[scores={lowimmunityalarm=15}] run playsound ui.button.click master @s ~ ~ ~ 1 2 1
execute as @s[scores={lowimmunityalarm=20}] run scoreboard players set @s lowimmunityalarm 0
playsound block.beacon.deactivate master @s[scores={immunityrefill=1,toggle_immunity_sounds=0}] ~ ~ ~ 1 1 1
scoreboard players set @s immunityrefill 0