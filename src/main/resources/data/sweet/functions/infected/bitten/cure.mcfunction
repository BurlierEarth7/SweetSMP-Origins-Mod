tag @s remove bitten
tellraw @s {"text":"Your Infection has been cured!","bold":true,"italic":true,"color":"dark_green"}
execute at @s run playsound minecraft:entity.zombie_villager.cure master @a[distance=..10] ~ ~ ~ 0.6 1 1 
execute as @s run function sweet:advancements/bitten_cured
stopsound @s[scores={toggle_immunity_music=0}] music minecraft:music.nether.crimson_forest
stopsound @s[scores={toggle_immunity_music=0}] music minecraft:music.nether.basalt_deltas
stopsound @s[scores={toggle_immunity_music=0}] music minecraft:music.nether.nether_wastes