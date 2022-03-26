tag @s add bitten
origin set @s origins:bitten sweet:bitten_infected
effect give @s instant_damage 1 0 true
execute at @s run playsound minecraft:entity.zombie.converted_to_drowned master @a[distance=..20] ~ ~ ~ 1 1 1
tellraw @s {"text":"You've been Infected! check your origins for your health status and how to prevent the Infection from progressing! Hover over this text for help on how to do this      ","bold":true,"italic":true,"color":"dark_red","hoverEvent":{"action":"show_text","contents":["Press: ",{"keybind":"key.origins.view_origin"}," to view your origin abilities and health status"]}}