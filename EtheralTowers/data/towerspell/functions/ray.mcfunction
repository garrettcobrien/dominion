#
#   function raycasting:ray
#   @parent raycasting:start_ray
#
#

##   // #distance = 100ticks pre 10 blocks //
execute unless block ~ ~ ~ air run scoreboard players set #hit temp 1

#> Hit Center 
execute as @s[tag=towercrystal] if score #hit temp matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=middlestand,dx=0] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run scoreboard players set #hit temp 1

#> Hit Player
execute as @s[tag=middlestand] if score #hit temp matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @a[dx=0] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run function towerspell:hit_player

## Testing Particles Remove when Finished adjusting commands
execute if block ~ ~ ~ air if score #distance temp matches ..1000 run function towerspell:particle

## Run command again if nothing found
scoreboard players add #distance temp 1
execute if score #hit temp matches 0 if score #distance temp matches ..1000 positioned ^ ^ ^0.1 run function towerspell:ray
