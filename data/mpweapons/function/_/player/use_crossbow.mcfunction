#> mpweapons:_/player/use_crossbow
#--------------------
# _/tick
#--------------------

scoreboard players reset @s _mpweapons-use_crossbow
tag @s add _mpweapons-crossbow
execute anchored eyes positioned ^ ^ ^.5 as @e[type=#minecraft:arrows,distance=0..2,tag=!_mpweapons-arrow_checked] at @s run function mpweapons:_/arrow/crossbow/check
tag @s remove _mpweapons-crossbow