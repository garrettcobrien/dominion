#
#   function raycasting:start_ray
#   @parent raycasting:tick
#
#

tag @s add ray
scoreboard players set #hit temp 0
scoreboard players set #distance temp 0
function raycasting:ray
tag @s remove ray
