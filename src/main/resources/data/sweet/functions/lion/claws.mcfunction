effect give @s strength 10 0 false
effect give @s speed 3 0 true
execute at @s run particle minecraft:cloud ~ ~ ~ 0.5 1 0.5 0.2 500 force
playsound minecraft:entity.ender_dragon.growl master @a[distance=..10] ~ ~ ~ 1 1