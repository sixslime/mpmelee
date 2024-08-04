#> mpweapons:_/airborne/remove_each
#--------------------
# _/adv/unground
#--------------------

function mpweapons:_/airborne/remove_each.1 with storage mpweapons:var airborne.attributes[-1]

data remove storage mpweapons:var airborne.attributes[-1]
execute if data storage mpweapons:var airborne.attributes[0] run function mpweapons:_/airborne/remove_each