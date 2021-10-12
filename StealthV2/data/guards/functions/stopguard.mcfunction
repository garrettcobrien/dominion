#
#   function guards:stopguard
#   @parents guards:pathing
#
## stopping the guard on the path and also checking for the current direction
tag @s add stopped
setblock ~ ~-2 ~ blue_wool

execute if entity @s[y_rotation=90] run function guards:lookaround90 
execute if entity @s[y_rotation=180] run function guards:lookaround180
execute if entity @s[y_rotation=0] run function guards:lookaround180
execute if entity @s[y_rotation=270] run function guards:lookaround270