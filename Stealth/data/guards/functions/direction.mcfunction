#
#   function guards:direction
#   @parent guards:guardtick
#
## Looking for the direction the terracotta is facing
execute at @s if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=south] run function guards:south

execute at @s if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=north] run function guards:north

execute at @s if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=east] run function guards:east

execute at @s if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=west] run function guards:west

