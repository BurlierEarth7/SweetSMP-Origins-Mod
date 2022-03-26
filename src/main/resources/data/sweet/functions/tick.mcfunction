execute as @a[tag=!bitten] run origin set @s origins:bitten sweet:healthy
execute as @a[tag=infected] run origin set @s origins:bitten sweet:healthy
execute as @a[tag=feral_infected] run origin set @s origins:bitten sweet:healthy
scoreboard players enable @a toggle_immunity_sounds
scoreboard players enable @a toggle_30_second_alarm
scoreboard players enable @a toggle_immunity_music

scoreboard players set @a[scores={toggle_immunity_sounds=2..}] toggle_immunity_sounds 0 
scoreboard players set @a[scores={toggle_immunity_music=2..}] toggle_immunity_music 0 
scoreboard players set @a[scores={toggle_30_second_alarm=2..}] toggle_30_second_alarm 0 
scoreboard players set @a[scores={toggle_30_second_alarm=1}] lowimmunityalarm 0


scoreboard players enable @a help_infected
tellraw @a[scores={help_infected=1..}] ["",{"text":"Hover over each line to view details","bold":true,"italic":true,"color":"dark_aqua"},"\n",{"text":"How to play as Infected","bold":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"When in the light, your Immunity will recharge. You have 3 minutes of Immunity.","italic":true},"\n",{"text":"Immunity: How much time you have before you become a Feral Infected","italic":true}]}},"\n",{"text":"What is a ","bold":true,"color":"red"},{"text":"Feral Infected","bold":true,"italic":true,"color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"text":"Feral Infecteds are Infecteds that ran out of Immunity ","italic":true},"\n",{"text":"These Infected lose their vision, and any villagers or players they can see will glow red","italic":true},"\n",{"text":"They can Slash, which deals poison damage, or Bite, which will return them to an Infected, but make whoever they bite a Bitten Infected","italic":true}]}},"\n",{"text":"What happens when I bite someone?","bold":true,"italic":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"When you bite someone, if they are a villager, nothing happens.","italic":true},"\n","If they are a player however, their Infection Status will change from Healthy to Bitten"]}}]
scoreboard players set @a[scores={help_infected=1..}] help_infected 0 

scoreboard players enable @a help_bitten
tellraw @a[scores={help_bitten=1..}] ["",{"text":"Hover over each line to view details","bold":true,"italic":true,"color":"dark_aqua"},"\n",{"text":"The Health System","bold":true,"italic":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Healthy: You have not been bitten or you are cured. The default health status","bold":true,"italic":true,"color":"dark_green"},"\n",{"text":"Bitten: You have been bitten by a Feral Infected, you can cure this by eating a golden apple. Stay in the light, do not leave it for more than 3 minutes. If your timer runs out, you will become a Feral Infected and lose your current origin.","bold":true,"italic":true,"color":"dark_red"}]}},"\n",{"text":"Losing your origin","bold":true,"italic":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"If your timer runs out and you become a Feral Infected, you will lose your current origin","italic":true},"\n",{"text":"Don't panic, you can get your origin back by crafting an orb of origin, this requires 4 diamonds, 4 emeralds and 1 netherite ingot, you can find the recipe in your recipe book","italic":true}]}},"\n",{"text":"The Immunity Timer","bold":true,"italic":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Your Immunity Timer is much harder to keep track of than a regular infected. it is advised you keep bright light sources (Torches, Lanterns, Lava, etc...) on you at all times, and never leave it for longer than 2 minutes. You have 3 minutes in total before you transform.","italic":true}]}}]
scoreboard players set @a[scores={help_bitten=1..}] help_bitten 0 

scoreboard players enable @a help_toggles
tellraw @a[scores={help_toggles=1..}] ["",{"text":"Hover over each line to view details","bold":true,"italic":true,"color":"dark_aqua"},"\n",{"text":"toggle_immunity_sounds","bold":true,"italic":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Sounds that play when you enter and exit light sources can be toggled, use /trigger toggle_immunity_sounds to enable/disable them","italic":true}]}},"\n",{"text":"toggle_immunity_music","bold":true,"italic":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Music will play when your Immunity is decreasing. This can be toggled off/on with /trigger toggle_immunity_music","italic":true}]}},"\n",{"text":"toggle_30_second_alarm","bold":true,"italic":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"When your Immunity has reached 30 seconds, an alarm will play until it runs out or you refill it. This can be toggled off/on with /trigger toggle_30_second_alarm","italic":true}]}}]
scoreboard players set @a[scores={help_toggles=1..}] help_toggles 0 

recipe give @a orb
function sweet:advancements/advancement_tick


execute if score #game glb_wallrun matches 0 run function sweet:skills/parkour/wallrunning/wlrn
execute if score #game glb_wallrun matches 1 run function sweet:skills/parkour/wallrunning/glb_wlrn
function sweet:skills/parkour/wallrunning/wlrns

scoreboard players enable @a toggle_wallrun
scoreboard players set @a[scores={toggle_wallrun=2..}] toggle_wallrun 0
tag @a[scores={toggle_wallrun=0}] add toggle_wallrun 
tag @a[scores={toggle_wallrun=1}] remove toggle_wallrun

give @a[scores={crafted_stamina_booster=1..}] minecraft:stick{CustomModelData:1,display:{Name:'[{"text":"Stamina Booster","color":"aqua","italic":true,"bold":true},{"text":"","color":"aqua","italic":false,"bold":false}]',Lore:['[{"text":"Completely Refills ALL Stamina"}]']}, stamina_booster: 1b} 5
scoreboard players remove @a[scores={crafted_stamina_booster=1..}] crafted_stamina_booster 1
clear @a[gamemode=!creative] chicken_spawn_egg
recipe give @a[tag=parkour] stamina_booster