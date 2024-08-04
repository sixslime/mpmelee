#> mpweapons:_/cache/generate
#--------------------
# _/load
#--------------------

data remove storage mpweapons:data _.cache

#scoreboard players set *-1 --mpweapons -1
#scoreboard players set *1000 --mpweapons 1000

#execute store result score *cache.assumed_attack_speed --mpweapons run data get storage mpweapons:settings assumed_attack_speed 1000

data modify storage mpweapons:var cache.items set from storage mpweapons:settings items
execute if data storage mpweapons:var cache.items[0] run function mpweapons:_/cache/each_item
