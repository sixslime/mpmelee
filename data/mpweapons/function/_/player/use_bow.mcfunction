#> mpweapons:_/player/use_bow
#--------------------
# _/tick
#--------------------

scoreboard players reset @s _mpweapons-use_bow

tag @s add _mpweapons-bow
execute anchored eyes positioned ^ ^ ^.5 as @e[type=#minecraft:arrows,distance=0..2,tag=!_mpweapons-arrow_checked] at @s run function mpweapons:_/arrow/bow/check
tag @s remove _mpweapons-bow
