#> mpmelee:_/cache/each_item
#--------------------
# ./generate
#--------------------

data modify storage mpmelee:var cache.this_item set from storage mpmelee:var cache.items[-1]

#attack speed stat to percent mod calculation
scoreboard players operation *cache.x -mpmelee = *cache.assumed_attack_speed --mpmelee
execute store result score *cache.y -mpmelee run data get storage mpmelee:var cache.this_item.stats.attack_speed 1000
scoreboard players operation *cache.x -mpmelee -= *cache.y -mpmelee
scoreboard players operation *cache.x -mpmelee *= *1000 --mpmelee
scoreboard players operation *cache.x -mpmelee /= *cache.assumed_attack_speed --mpmelee
execute store result storage mpmelee:var cache.this_item.stats.attack_speed_mod float -0.001 run scoreboard players get *cache.x -mpmelee

#attack damage stat to mod (minus 1)

data modify storage mpmelee:data _.cache.items append from storage mpmelee:var cache.this_item

data remove storage mpmelee:var cache.items[-1]
execute if data storage mpmelee:var cache.items[0] run function mpmelee:_/cache/each_item