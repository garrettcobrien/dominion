#
#   function guards:north
#   @parent guards:direction
#
## Teleporting the guard to face north
execute at @s unless score @s direction matches 1 run tp @s ~ ~ ~ 0 0
execute at @s unless score @s direction matches 1 run schedule function guards:initialblock 5t 
scoreboard players set @s direction 1
