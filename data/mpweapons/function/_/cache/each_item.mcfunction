#> mpweapons:_/cache/each_item
#--------------------
# ./generate
#--------------------

data modify storage mpweapons:var cache.this_item set from storage mpweapons:var cache.items[-1]

data modify storage mpweapons:data _.cache.items append from storage mpweapons:var cache.this_item

data remove storage mpweapons:var cache.items[-1]
execute if data storage mpweapons:var cache.items[0] run function mpweapons:_/cache/each_item