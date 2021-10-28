#
#	function raycasting:display
#	@parent raycasting:tick
#
#
#Creates an empty title (do not remove)
execute if score @s guardtime matches 1.. run title @s title " "

#Display Code, currently using the actual boxes rather than the unicode
#Couldn't figure out how to make the unicode work
execute if score @s guardtime matches 1..5 run title @s subtitle {"text":"▖","color":"green"}
execute if score @s guardtime matches 6..10 run title @s subtitle {"text":"▖▖","color":"green"}
execute if score @s guardtime matches 11..15 run title @s subtitle {"text":"▖▖▖","color":"green"}
execute if score @s guardtime matches 16..20 run title @s subtitle [{"text":"▖▖▖","color":"green"},{"text":"▖","color":"gold"}]
execute if score @s guardtime matches 21..25 run title @s subtitle [{"text":"▖▖▖","color":"green"},{"text":"▖▖","color":"gold"}]
execute if score @s guardtime matches 26..30 run title @s subtitle [{"text":"▖▖▖","color":"green"},{"text":"▖▖▖","color":"gold"}]
execute if score @s guardtime matches 31..35 run title @s subtitle [{"text":"▖▖▖","color":"green"},{"text":"▖▖▖","color":"gold"},{"text":"▖","color":"red"}]
execute if score @s guardtime matches 36..40 run title @s subtitle [{"text":"▖▖▖","color":"green"},{"text":"▖▖▖","color":"gold"},{"text":"▖▖","color":"red"}]
execute if score @s guardtime matches 41..45 run title @s subtitle [{"text":"▖▖▖","color":"green"},{"text":"▖▖▖","color":"gold"},{"text":"▖▖▖","color":"red"}]
execute if score @s guardtime matches 45.. run title @s clear

#Adjusting fade time on the last detection spot
execute if score @s guardtime matches 1..2 run title @s times 0 10 5
