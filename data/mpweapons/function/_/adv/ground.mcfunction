#> mpweapons:_/adv/ground
#--------------------
# @advancement : _/ground
#--------------------

advancement revoke @s only mpweapons:_/unground

data modify storage mpweapons:var airborne.attributes set from storage mpweapons:settings airborne_modifiers

execute if data storage mpweapons:var airborne.attributes[0] run function mpweapons:_/airborne/remove_each

data remove storage mpweapons:var airborne