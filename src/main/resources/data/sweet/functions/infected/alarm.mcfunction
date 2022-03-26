scoreboard players add @s crimsontimer 1
execute as @s[scores={crimsontimer=10}] run playsound block.note_block.pling master @s ~ ~ ~ 1 1 1
execute as @s[scores={crimsontimer=15}] run playsound block.note_block.pling master @s ~ ~ ~ 1 1 1
execute as @s[scores={crimsontimer=20}] run scoreboard players set @s crimsontimer 0