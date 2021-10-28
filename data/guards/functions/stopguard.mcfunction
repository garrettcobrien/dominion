#
#   function guards:stopguard
#   @parents guards:pathing
#
## stopping the guard on the path and also checking for the current direction
function rng:range_lcg

tag @s add stopped

execute as @e[type=minecraft:zombie,tag=stopped] at @s if score out math matches ..50 run schedule function guards:restartguard 8s
execute as @e[type=minecraft:zombie,tag=stopped] at @s if score out math matches 51.. run schedule function guards:restartguard 15s



##setblock ~ ~-2 ~ blue_wool
