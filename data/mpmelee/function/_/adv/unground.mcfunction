#> mpmelee:_/adv/unground
#--------------------
# @advancement : _/unground
#--------------------

advancement revoke @s only mpmelee:_/ground

data modify storage mpmelee:var airborne.attributes set from storage mpmelee:settings airborne_modifiers

execute if data storage mpmelee:var airborne.attributes[0] run function mpmelee:_/airborne/apply_each

data remove storage mpmelee:var airborne