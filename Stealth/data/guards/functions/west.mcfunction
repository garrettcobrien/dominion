#
#   function guards:west
#   @parent guards:direction
#
## Teleporting the guard to face west
execute at @s unless score @s direction matches 4 run tp @s ~ ~ ~ -90 0
execute at @s unless score @s direction matches 4 run schedule function guards:initialblock 5t 
scoreboard players set @s direction 4
