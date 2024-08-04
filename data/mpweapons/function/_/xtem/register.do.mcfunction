#> mpweapons:_/xtem/register.1

$data modify storage mpweapons:var register.target_item set from storage mpweapons:data _.cache.items[{item:"$(id)"}]
execute unless data storage mpweapons:var register.target_item run return fail

data modify storage mpweapons:var register.attributes append value {type:"minecraft:generic.attack_damage", operation:"add_value"}
data modify storage mpweapons:var register.attributes[-1].amount set from storage mpweapons:var register.target_item.stats.damage
data modify storage mpweapons:var register.attributes append value {type:"minecraft:generic.attack_knockback", operation:"add_value"}
data modify storage mpweapons:var register.attributes[-1].amount set from storage mpweapons:var register.target_item.stats.knockback
data modify storage mpweapons:var register.attributes append value {type:"minecraft:generic.attack_speed", operation:"add_multiplied_base"}
data modify storage mpweapons:var register.attributes[-1].amount set from storage mpweapons:var register.target_item.stats.attack_speed_modifier
data modify storage mpweapons:var register.attributes append value {type:"minecraft:player.entity_interaction_range", operation:"add_multiplied_base"}
data modify storage mpweapons:var register.attributes[-1].amount set from storage mpweapons:var register.target_item.stats.range_modifier

data modify storage mpweapons:var register.attributes[].id set value "mpweapons:stat"
data modify storage mpweapons:var register.attributes[].slot set value "mainhand"

data modify storage mpweapons:var register.item.components."minecraft:attribute_modifiers".modifiers append from storage mpweapons:var register.attributes[]
