execute at @s run playsound block.sweet_berry_bush.pick_berries master @a[distance=..5] ~ ~ ~ 1 1 1
tellraw @s {"text": "Booster Consumed!","color": "aqua","bold": true}
resource change @s sweet:skills/parkour/stamina_stamina 99999