#
#   function raycasting:tick
#   @parent #core:tick
#
## Start Raycasting from entity
execute as @e[tag=guard,type=zombie] at @s if entity @a[distance=..10,gamemode=adventure,tag=!spotted] anchored eyes positioned ^ ^ ^ anchored feet facing entity @p eyes run function raycasting:start_ray


#execute as @e[tag=guard,type=zombie] at @s if entity @e[distance=..10,tag=pursuit] anchored eyes positioned ^ ^ ^ anchored feet facing entity @e[distance=..10,tag=pursuit,sort=nearest,limit=1] eyes run function raycasting:start_ray

## Guardtime cooldown
execute as @a[gamemode=adventure] at @s if score @s guarddelay matches 1.. run scoreboard players remove @s guarddelay 1
execute as @a[gamemode=adventure] at @s if score @s guarddelay matches 0 run scoreboard players remove @s[scores={guardtime=1..}] guardtime 1

## Initiate detection hud
execute as @a[gamemode=adventure] at @s if score @s guardtime matches 1.. run function raycasting:display
