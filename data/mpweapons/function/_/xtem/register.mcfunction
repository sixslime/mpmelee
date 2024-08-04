#> mpweapons:_/xtem/register
#--------------------
# @hook : xtem:register
#--------------------

execute if items entity @s container.0 *[minecraft:custom_data~{_:true}] run return 0
execute unless function mpweapons:_/xtem/register.1 run return fail

data modify storage mpweapons:var register.attributes append value {type:"minecraft:generic.attack_speed", operation:"add_multiplied_base"}
data modify storage mpweapons:var register.attributes[-1].amount set from storage mpweapons:var register.item.stats.attack_speed_mod
data modify storage mpweapons:var register.attributes append value {type:"minecraft:generic.attack_damage", operation:"add_value"}
data modify storage mpweapons:var register.attributes[-1].amount set from storage mpweapons:var register.item.stats.attack_speed_mod

data remove storage mpweapons:var register