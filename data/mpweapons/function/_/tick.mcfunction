#>mpweapons:_/tick
#--------------------
# @TICK
#--------------------

schedule function mpweapons:_/tick 1t

execute as @a[scores={_mpweapons-use_bow=1..}] at @s run function mpweapons:_/player/use_bow
execute as @a[scores={_mpweapons-use_crossbow=1..}] at @s run function mpweapons:_/player/use_crossbow

execute as @e[type=#minecraft:arrows, tag=!_mpweapons-arrow_checked] run tag @s add _mpweapons-arrow_checked