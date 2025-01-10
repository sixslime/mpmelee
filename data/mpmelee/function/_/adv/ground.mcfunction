#> mpmelee:_/adv/ground
#--------------------
# @advancement : _/ground
#--------------------

advancement revoke @s only mpmelee:_/unground

data modify storage mpmelee:var airborne.attributes set from storage mpmelee:settings airborne_modifiers

execute if data storage mpmelee:var airborne.attributes[0] run function mpmelee:_/airborne/remove_each

data remove storage mpmelee:var airborne