tag @s add parkour

execute if score #game glb_wallrun matches 0 run function sweet:skills/parkour/wallrunning/wlrn
execute if score #game glb_wallrun matches 1 run function sweet:skills/parkour/wallrunning/glb_wlrn
function sweet:skills/parkour/wallrunning/wlrns