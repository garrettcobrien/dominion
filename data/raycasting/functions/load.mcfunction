#
#   function raycasting:load
#   @parent #core:load
#
#
scoreboard objectives add temp dummy
scoreboard objectives add guardtime dummy
scoreboard objectives add guarddelay dummy

#guardpathing init
scoreboard objectives add direction dummy


#rng init
scoreboard objectives add math dummy
scoreboard objectives add constant dummy
scoreboard players set #2 constant 2
scoreboard players set #lcg constant 1103515245

execute unless score #lcg math matches ..0 unless score #lcg math matches 1.. run function rng:uuid_reset

#this is a global load/init



