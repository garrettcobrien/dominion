#
#   function guards:stopguard
#   @parents guards:pathing
#
## stopping the guard on the path and also checking for the current direction
tag @s add stopped
setblock ~ ~-2 ~ blue_wool

execute as @e[type=minecraft:zombie,tag=stopped] at @s if score out math matches ..50 run schedule function guards:restartguard 3s
execute as @e[type=minecraft:zombie,tag=stopped] at @s if score out math matches 51.. run schedule function guards:restartguard 5s


##setblock ~ ~-2 ~ blue_wool
