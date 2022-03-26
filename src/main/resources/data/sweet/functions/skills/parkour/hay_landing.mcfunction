execute at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.01 500 force
execute at @s run playsound minecraft:block.grass.place master @a[distance=..5] ~ ~ ~ 1 0.7 1
effect give @s speed 10 1 true
resource change @s sweet:skills/parkour/stamina_stamina 99999