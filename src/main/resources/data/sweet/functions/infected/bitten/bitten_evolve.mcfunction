origin set @s origins:bitten origins:human
origin set @s origins:fox_subclass origins:empty
origin set @s origins:origin sweet:feral_infected
title @s actionbar {"text": "EMERGENCY: INFECTION MUTATING!","color": "dark_red","bold": true,"italic": true}
playsound entity.ender_dragon.growl master @a[distance=..20] ~ ~ ~ 1 1 1
advancement grant @s only sweet:infected/mutate