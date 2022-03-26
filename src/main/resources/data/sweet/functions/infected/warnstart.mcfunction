title @s actionbar {"text": "CAUTION: Immunity decreasing, 3 minutes until mutation.","color": "gold","bold": true,"italic": true}
playsound block.note_block.pling master @s ~ ~ ~ 1 1 1
stopsound @s[scores={toggle_immunity_music=0}] music
playsound minecraft:music.nether.crimson_forest music @s[scores={toggle_immunity_music=0}] ~ ~ ~ 1 1 1
