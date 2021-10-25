#
#	function raycasting:detected
#	@parent raycasting:hit_entity
#
#
tellraw @s ["",{"text":"You've been spotted!","bold":true,"color":"red"}]
scoreboard players set @s guardtime 0
scoreboard players set @s found 1
execute at @s as @e[tag=guard,sort=nearest,limit=1] run data modify entity @s NoAI set value 0b



#In order to do something in game run an execute if entity scores={found=1}
