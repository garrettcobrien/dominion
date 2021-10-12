#
#   function guards:east
#   @parent guards:direction
#
## Teleporting the guard to face east
execute at @s unless score @s direction matches 3 run tp @s ~ ~ ~ 90 0
execute at @s unless score @s direction matches 3 run schedule function guards:initialblock 5t 
scoreboard players set @s direction 3