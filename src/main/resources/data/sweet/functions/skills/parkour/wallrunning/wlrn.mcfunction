
execute as @a at @s anchored feet if block ^-0.5 ^ ^ #sweet:wlrn if block ~ ~-1 ~ air run tag @s[tag=parkour, tag=!wr] add wr_begin
execute as @a at @s anchored feet if block ^0.5 ^ ^ #sweet:wlrn if block ~ ~-1 ~ air run tag @s[tag=parkour, tag=!wr] add wr_begin

tag @e[tag=parkour, tag=wr_begin, tag=can_wallrun, tag=toggle_wallrun] add wr
tag @e[tag=parkour, tag=wr_begin, tag=can_wallrun, tag=toggle_wallrun] remove wr_begin

execute as @a[tag=parkour, tag=wr, tag=can_wallrun, tag=toggle_wallrun] at @s anchored feet unless block ^-0.5 ^ ^ #sweet:wlrn unless block ^0.5 ^ ^ #sweet:wlrn run effect clear @s minecraft:levitation
execute as @a[tag=parkour, tag=wr, tag=can_wallrun, tag=toggle_wallrun] at @s anchored feet unless block ^-0.5 ^ ^ #sweet:wlrn unless block ^0.5 ^ ^ #sweet:wlrn run effect clear @s minecraft:speed
execute as @a[tag=parkour, tag=wr, tag=can_wallrun, tag=toggle_wallrun] at @s anchored feet unless block ^-0.5 ^ ^ #sweet:wlrn unless block ^0.5 ^ ^ #sweet:wlrn run tag @s remove wr

execute as @a[tag=parkour, tag=wr, tag=can_wallrun, tag=toggle_wallrun] at @s anchored feet unless block ~ ~-1 ~ air run effect clear @s minecraft:levitation
execute as @a[tag=parkour, tag=wr, tag=can_wallrun, tag=toggle_wallrun] at @s anchored feet unless block ~ ~-1 ~ air run effect clear @s minecraft:speed
execute as @a[tag=parkour, tag=wr, tag=can_wallrun, tag=toggle_wallrun] at @s anchored feet unless block ~ ~-1 ~ air run tag @s remove wr

effect give @e[tag=parkour, tag=wr, tag=can_wallrun, tag=toggle_wallrun] minecraft:levitation 1 255 true