#> mpmelee:_/cache/generate
#--------------------
# _/load
#--------------------

data remove storage mpmelee:data _.cache

#scoreboard players set *-1 --mpmelee -1
#scoreboard players set *1000 --mpmelee 1000

#execute store result score *cache.assumed_attack_speed --mpmelee run data get storage mpmelee:settings assumed_attack_speed 1000

data modify storage mpmelee:var cache.items set from storage mpmelee:settings items
execute if data storage mpmelee:var cache.items[0] run function mpmelee:_/cache/each_item
