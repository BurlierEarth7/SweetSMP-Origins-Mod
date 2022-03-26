power remove @s sweet:infected/mutations/mutationone
power remove @s sweet:infected/devolve
power grant @s sweet:infected/evolve
effect give @s nausea 15 0 true
effect clear @s blindness
playsound block.fire.extinguish master @s ~ ~ ~ 1 1 1
particle ash ~ ~ ~ 0.5 1 0.5 1 500 force
title @s actionbar {"text": "Alert: Infection Stabilizing!","color": "green","bold": true,"italic": true}