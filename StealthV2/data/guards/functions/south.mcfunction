#
#   function guards:sourth
#   @parent guards:direction
#
## Teleporting the guard to face south
execute at @s unless score @s direction matches 2 run tp @s ~ ~ ~ 180 0
execute at @s unless score @s direction matches 2 run schedule function guards:initialblock 5t 
scoreboard players set @s direction 2
