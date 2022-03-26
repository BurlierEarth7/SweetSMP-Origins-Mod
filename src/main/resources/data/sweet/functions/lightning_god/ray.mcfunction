execute if score #hit tempp matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#sweet:entities,tag=!rayc,dx=0,sort=nearest] run function sweet:lightning_god/check_hit_entity
execute unless block ~ ~ ~ #sweet:non_solid run function sweet:lightning_god/hit_block
scoreboard players add #distance tempp 1
execute if score #hit tempp matches 0 if score #distance tempp matches ..800 positioned ^ ^ ^0.5 run function sweet:lightning_god/ray
