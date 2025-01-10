#>mpmelee:_/tick
#--------------------
# @TICK
#--------------------

schedule function mpmelee:_/tick 1t

execute as @a[scores={_mpmelee-use_bow=1..}] at @s run function mpmelee:_/player/use_bow
execute as @a[scores={_mpmelee-use_crossbow=1..}] at @s run function mpmelee:_/player/use_crossbow

execute as @e[type=#minecraft:arrows, tag=!_mpmelee-arrow_checked] run tag @s add _mpmelee-arrow_checked