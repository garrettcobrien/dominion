#
#   function guards:initialblock
#   @parents guards:north,guards:south,guards:east,guards:west
#
## moving the guard along the path
function rng:range_lcg

execute as @e[type=minecraft:zombie,tag=patrol] at @s if score out math matches 10 unless entity @s[tag=stopped] run function guards:stopguard

execute as @e[type=minecraft:zombie,tag=patrol] at @s if block ~ ~-2 ~ minecraft:light_blue_glazed_terracotta run tp @s ^ ^ ^0.05
