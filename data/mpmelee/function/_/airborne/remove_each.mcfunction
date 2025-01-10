#> mpmelee:_/airborne/remove_each
#--------------------
# _/adv/unground
#--------------------

function mpmelee:_/airborne/remove_each.1 with storage mpmelee:var airborne.attributes[-1]

data remove storage mpmelee:var airborne.attributes[-1]
execute if data storage mpmelee:var airborne.attributes[0] run function mpmelee:_/airborne/remove_each