#> mpmelee:_/xtem/register.1

$data modify storage mpmelee:var register.target_item set from storage mpmelee:data _.cache.items[{item:"$(id)"}]
execute unless data storage mpmelee:var register.target_item run return fail

data modify storage mpmelee:var register.attributes append value {type:"minecraft:attack_damage", operation:"add_value"}
data modify storage mpmelee:var register.attributes[-1].amount set from storage mpmelee:var register.target_item.stats.damage
data modify storage mpmelee:var register.attributes append value {type:"minecraft:attack_knockback", operation:"add_value"}
data modify storage mpmelee:var register.attributes[-1].amount set from storage mpmelee:var register.target_item.stats.knockback
data modify storage mpmelee:var register.attributes append value {type:"minecraft:attack_speed", operation:"add_multiplied_base"}
data modify storage mpmelee:var register.attributes[-1].amount set from storage mpmelee:var register.target_item.stats.attack_speed_modifier
data modify storage mpmelee:var register.attributes append value {type:"minecraft:entity_interaction_range", operation:"add_multiplied_base"}
data modify storage mpmelee:var register.attributes[-1].amount set from storage mpmelee:var register.target_item.stats.range_modifier

data modify storage mpmelee:var register.attributes[].id set value "mpmelee:stat"
data modify storage mpmelee:var register.attributes[].slot set value "mainhand"

data modify storage mpmelee:var register.item.components."minecraft:attribute_modifiers".modifiers append from storage mpmelee:var register.attributes[]
