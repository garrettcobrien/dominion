#
#   function raycasting:ray
#   @parent raycasting:start_ray
#
#
##   // #distance = 100ticks per 10 blocks //
execute unless block ~ ~ ~ #raycasting:non_solid run function raycasting:hit_block
##Non sneaking
execute if score #hit temp matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @a[dx=0,sort=nearest,predicate=!raycasting:sneaking] if entity @e[tag=guard,distance=..10] if score #hit temp matches 0 positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run function raycasting:hit_entity_not_sneaking
##Sneaking
execute if score #hit temp matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @a[dx=0,sort=nearest,predicate=raycasting:sneaking] at @s if entity @e[tag=guard,distance=..4] if score #hit temp matches 0 positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run function raycasting:hit_entity_sneaking
scoreboard players add #distance temp 1

## Testing Particles Remove when Finished adjusting commands
execute if block ~ ~ ~ #raycasting:non_solid if score #distance temp matches ..100 run function raycasting:particle

## Run command again if nothing found
execute if score #hit temp matches 0 if score #distance temp matches ..100 positioned ^ ^ ^0.1 run function raycasting:ray
