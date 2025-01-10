#> mpmelee:_/player/use_bow
#--------------------
# _/tick
#--------------------

scoreboard players reset @s _mpmelee-use_bow

tag @s add _mpmelee-bow
execute anchored eyes positioned ^ ^ ^.5 as @e[type=#minecraft:arrows,distance=0..2,tag=!_mpmelee-arrow_checked] at @s run function mpmelee:_/arrow/bow/check
tag @s remove _mpmelee-bow
