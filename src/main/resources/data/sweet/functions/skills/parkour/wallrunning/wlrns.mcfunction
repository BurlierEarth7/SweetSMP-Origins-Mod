scoreboard players remove @a wallrun_sound 1
execute as @a[scores={wallrun_sound=..0},tag=parkour, tag=wr, tag=can_wallrun, tag=toggle_wallrun] at @s run playsound minecraft:block.stone.step neutral @a
execute as @a[scores={wallrun_sound=..0},tag=parkour, tag=wr, tag=can_wallrun, tag=toggle_wallrun] at @s run resource change @s sweet:skills/parkour/stamina_stamina -20
execute as @a[scores={wallrun_sound=..0},tag=parkour, tag=wr, tag=can_wallrun, tag=toggle_wallrun] at @s run scoreboard players set @s wallran 1
scoreboard players set @a[scores={wallrun_sound=..0}] wallrun_sound 5