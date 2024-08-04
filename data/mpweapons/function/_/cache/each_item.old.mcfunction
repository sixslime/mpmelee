#> mpweapons:_/cache/each_item
#--------------------
# ./generate
#--------------------

data modify storage mpweapons:var cache.this_item set from storage mpweapons:var cache.items[-1]

#attack speed stat to percent mod calculation
scoreboard players operation *cache.x -mpweapons = *cache.assumed_attack_speed --mpweapons
execute store result score *cache.y -mpweapons run data get storage mpweapons:var cache.this_item.stats.attack_speed 1000
scoreboard players operation *cache.x -mpweapons -= *cache.y -mpweapons
scoreboard players operation *cache.x -mpweapons *= *1000 --mpweapons
scoreboard players operation *cache.x -mpweapons /= *cache.assumed_attack_speed --mpweapons
execute store result storage mpweapons:var cache.this_item.stats.attack_speed_mod float -0.001 run scoreboard players get *cache.x -mpweapons

#attack damage stat to mod (minus 1)

data modify storage mpweapons:data _.cache.items append from storage mpweapons:var cache.this_item

data remove storage mpweapons:var cache.items[-1]
execute if data storage mpweapons:var cache.items[0] run function mpweapons:_/cache/each_item