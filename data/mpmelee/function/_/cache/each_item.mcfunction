#> mpmelee:_/cache/each_item
#--------------------
# ./generate
#--------------------

data modify storage mpmelee:var cache.this_item set from storage mpmelee:var cache.items[-1]

data modify storage mpmelee:data _.cache.items append from storage mpmelee:var cache.this_item

data remove storage mpmelee:var cache.items[-1]
execute if data storage mpmelee:var cache.items[0] run function mpmelee:_/cache/each_item