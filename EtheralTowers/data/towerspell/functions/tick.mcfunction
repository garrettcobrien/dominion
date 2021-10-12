#
#   function raycasting:tick
#   @parent #core:tick
#
#

# Start Raycasting from entity
execute as @e[type=armor_stand,tag=middlestand] at @s if entity @a[distance=..100] anchored eyes positioned ^ ^ ^ anchored feet facing entity @p eyes run function towerspell:start_ray 
execute as @e[type=armor_stand,tag=towercrystal] at @s if entity @a[distance=..100] anchored eyes positioned ^ ^ ^ anchored feet facing entity @e[tag=middlestand,limit=1] eyes run function towerspell:start_ray 

# I am starting the raycast by doing /function towerspell:tick