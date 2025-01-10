#> mpmelee:_/player/use_crossbow
#--------------------
# _/tick
#--------------------

scoreboard players reset @s _mpmelee-use_crossbow
tag @s add _mpmelee-crossbow
execute anchored eyes positioned ^ ^ ^.5 as @e[type=#minecraft:arrows,distance=0..2,tag=!_mpmelee-arrow_checked] at @s run function mpmelee:_/arrow/crossbow/check
tag @s remove _mpmelee-crossbow