#
#   function guards:guardtick
#   @parent #core:tick
#
## Look for entity ontop of terracotta 
execute as @e[type=minecraft:zombie,tag=patrol] at @s if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta run function guards:direction
## looks for entity after they are going the right direction
execute align xyz as @e[type=minecraft:zombie,tag=patrol] at @s if block ~ ~-2 ~ minecraft:light_blue_glazed_terracotta run function guards:pathing