#> mpweapons:_/adv/unground
#--------------------
# @advancement : _/unground
#--------------------

advancement revoke @s only mpweapons:_/ground

data modify storage mpweapons:var airborne.attributes set from storage mpweapons:settings airborne_modifiers

execute if data storage mpweapons:var airborne.attributes[0] run function mpweapons:_/airborne/apply_each

data remove storage mpweapons:var airborne