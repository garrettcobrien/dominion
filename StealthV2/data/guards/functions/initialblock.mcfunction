#
#   function guards:initialblock
#   @parents guards:north,guards:south,guards:east,guards:west
#
## Teleporting the guard off of the initial pink terracotta directional block
execute as @e[type=minecraft:zombie,tag=patrol] at @s if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta run tp @s ^ ^ ^0.01

execute as @e[type=minecraft:zombie,tag=patrol] at @s if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta run function guards:initialblock


