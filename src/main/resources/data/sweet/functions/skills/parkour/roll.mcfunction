execute at @s run particle minecraft:smoke ~ ~ ~ 0.5 1 0.5 0.01 500 force
execute at @s run playsound minecraft:item.armor.equip_leather master @a[distance=..5]
resource change @s sweet:skills/parkour/stamina_stamina 100
scoreboard players set @s rolled 1