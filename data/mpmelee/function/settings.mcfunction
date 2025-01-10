#>mpmelee:settings

#declare storage mpmelee:settings
data modify storage mpmelee:settings PERSIST set value false

#>-------------------
#> airborne_modifiers[] : {type: $attribute_type, amount: float, operation: $attribute_operation}
#-------------------
#~ attribute modifiers given to the player when they are airborne (not on ground).
#-------------------
#- these modifiers are intended for rebalancing critical hits.
#-------------------
 data modify storage mpmelee:settings airborne_modifiers set value []
 data modify storage mpmelee:settings airborne_modifiers append value {type:"minecraft:attack_speed", amount:-0.45, operation:"add_multiplied_total"}
#>-------------------

#>-------------------
#> items[] : {item: string, stats[]: {damage: float, attack_speed_modifier: float, range_modifier: float}}
#-------------------
# ~ item: the item id that the given entry applies too.
# ~ stats:
#   * damage: increase of attack damage when using this weapon.
#       - adds onto the player's base attack damage, which is default 1.0.
#       - ex: setting this value to 5.0 would make this weapon's damage 6.0.#
#   * knockback: increase of attack knockback when using this weapon.
#       - adds onto the player's base attack knockback, which is default 0.
#       - can technically be a negative value, but this will only make any difference if the player's base attack knockback is above 0, which by default it is not (a player with a negative attack knockback is equivelant to 0).
#   * attack_speed_modifier: percent increase/decrease of attack speed when using this weapon.
#       - default attack speed is 4.0.
#       - ex: setting this value to -0.5 would make the weapon's attack speed 2.0.
#   * range_modifier: percent increase/decrease of attack range when using the weapon.
#       - default attack range is 3.0.
#       - ex: setting this value to 0.1 would make the weapon's attack range 3.3.
#-------------------
data modify storage mpmelee:settings items set value []

data modify storage mpmelee:settings items append value {item:"minecraft:wooden_sword"}
data modify storage mpmelee:settings items[-1].stats set value {damage:2.0, knockback:0,attack_speed_modifier:-0.62, range_modifier:0}
data modify storage mpmelee:settings items append value {item:"minecraft:stone_sword"}
data modify storage mpmelee:settings items[-1].stats set value {damage:3.0, knockback:0,attack_speed_modifier:-0.635, range_modifier:0}
data modify storage mpmelee:settings items append value {item:"minecraft:iron_sword"}
data modify storage mpmelee:settings items[-1].stats set value {damage:4.0, knockback:0,attack_speed_modifier:-0.65, range_modifier:0}
data modify storage mpmelee:settings items append value {item:"minecraft:diamond_sword"}
data modify storage mpmelee:settings items[-1].stats set value {damage:5.0, knockback:0,attack_speed_modifier:-0.665, range_modifier:0}
data modify storage mpmelee:settings items append value {item:"minecraft:netherite_sword"}
data modify storage mpmelee:settings items[-1].stats set value {damage:6.0, knockback:0,attack_speed_modifier:-0.68, range_modifier:0}
data modify storage mpmelee:settings items append value {item:"minecraft:golden_sword"}
data modify storage mpmelee:settings items[-1].stats set value {damage:4.5, knockback:0.5,attack_speed_modifier:-0.71, range_modifier:0}

data modify storage mpmelee:settings items append value {item:"minecraft:wooden_axe"}
data modify storage mpmelee:settings items[-1].stats set value {damage:4.0, knockback:0,attack_speed_modifier:-0.755, range_modifier:0}
data modify storage mpmelee:settings items append value {item:"minecraft:stone_axe"}
data modify storage mpmelee:settings items[-1].stats set value {damage:5.0, knockback:0,attack_speed_modifier:-0.765, range_modifier:0}
data modify storage mpmelee:settings items append value {item:"minecraft:iron_axe"}
data modify storage mpmelee:settings items[-1].stats set value {damage:6.0, knockback:0,attack_speed_modifier:-0.775, range_modifier:0}
data modify storage mpmelee:settings items append value {item:"minecraft:diamond_axe"}
data modify storage mpmelee:settings items[-1].stats set value {damage:7.0, knockback:0,attack_speed_modifier:-0.785, range_modifier:0}
data modify storage mpmelee:settings items append value {item:"minecraft:netherite_axe"}
data modify storage mpmelee:settings items[-1].stats set value {damage:8.0, knockback:0,attack_speed_modifier:-0.795, range_modifier:0}
data modify storage mpmelee:settings items append value {item:"minecraft:golden_axe"}
data modify storage mpmelee:settings items[-1].stats set value {damage:6.5, knockback:0.5,attack_speed_modifier:-0.815, range_modifier:0}

data modify storage mpmelee:settings items append value {item:"minecraft:wooden_hoe"}
data modify storage mpmelee:settings items[-1].stats set value {damage:2.0, knockback:0, attack_speed_modifier:-0.49, range_modifier:0}
data modify storage mpmelee:settings items append value {item:"minecraft:stone_hoe"}
data modify storage mpmelee:settings items[-1].stats set value {damage:3.0, knockback:0, attack_speed_modifier:-0.5, range_modifier:0}
data modify storage mpmelee:settings items append value {item:"minecraft:iron_hoe"}
data modify storage mpmelee:settings items[-1].stats set value {damage:4.0, knockback:0, attack_speed_modifier:-0.51, range_modifier:0}
data modify storage mpmelee:settings items append value {item:"minecraft:diamond_hoe"}
data modify storage mpmelee:settings items[-1].stats set value {damage:5.0, knockback:0, attack_speed_modifier:-0.52, range_modifier:0}
data modify storage mpmelee:settings items append value {item:"minecraft:netherite_hoe"}
data modify storage mpmelee:settings items[-1].stats set value {damage:6.0, knockback:0, attack_speed_modifier:-0.53, range_modifier:0}
data modify storage mpmelee:settings items append value {item:"minecraft:golden_hoe"}
data modify storage mpmelee:settings items[-1].stats set value {damage:4.5, knockback:0.5, attack_speed_modifier:-0.55, range_modifier:0}

data modify storage mpmelee:settings items append value {item:"minecraft:wooden_pickaxe"}
data modify storage mpmelee:settings items[-1].stats set value {damage:6.0, knockback:0,attack_speed_modifier:-0.8, range_modifier:-0.28}
data modify storage mpmelee:settings items append value {item:"minecraft:stone_pickaxe"}
data modify storage mpmelee:settings items[-1].stats set value {damage:7.0, knockback:0,attack_speed_modifier:-0.81, range_modifier:-0.26}
data modify storage mpmelee:settings items append value {item:"minecraft:iron_pickaxe"}
data modify storage mpmelee:settings items[-1].stats set value {damage:8.0, knockback:0,attack_speed_modifier:-0.82, range_modifier:-0.24}
data modify storage mpmelee:settings items append value {item:"minecraft:diamond_pickaxe"}
data modify storage mpmelee:settings items[-1].stats set value {damage:9.0, knockback:0,attack_speed_modifier:-0.83, range_modifier:-0.22}
data modify storage mpmelee:settings items append value {item:"minecraft:netherite_pickaxe"}
data modify storage mpmelee:settings items[-1].stats set value {damage:10.0, knockback:0,attack_speed_modifier:-0.84, range_modifier:-0.20}
data modify storage mpmelee:settings items append value {item:"minecraft:golden_pickaxe"}
data modify storage mpmelee:settings items[-1].stats set value {damage:8.5, knockback:0.5,attack_speed_modifier:-0.86, range_modifier:-0.23}

data modify storage mpmelee:settings items append value {item:"minecraft:wooden_shovel"}
data modify storage mpmelee:settings items[-1].stats set value {damage:2.0, knockback:0,attack_speed_modifier:-0.68, range_modifier:0.15}
data modify storage mpmelee:settings items append value {item:"minecraft:stone_shovel"}
data modify storage mpmelee:settings items[-1].stats set value {damage:3.0, knockback:0,attack_speed_modifier:-0.69, range_modifier:0.165}
data modify storage mpmelee:settings items append value {item:"minecraft:iron_shovel"}
data modify storage mpmelee:settings items[-1].stats set value {damage:4.0, knockback:0,attack_speed_modifier:-0.7, range_modifier:0.18}
data modify storage mpmelee:settings items append value {item:"minecraft:diamond_shovel"}
data modify storage mpmelee:settings items[-1].stats set value {damage:5.0, knockback:0,attack_speed_modifier:-0.71, range_modifier:0.195}
data modify storage mpmelee:settings items append value {item:"minecraft:netherite_shovel"}
data modify storage mpmelee:settings items[-1].stats set value {damage:6.0, knockback:0,attack_speed_modifier:-0.72, range_modifier:0.21}
data modify storage mpmelee:settings items append value {item:"minecraft:golden_shovel"}
data modify storage mpmelee:settings items[-1].stats set value {damage:4.5, knockback:0.5,attack_speed_modifier:-0.74, range_modifier:0.19}


data modify storage mpmelee:settings items append value {item:"minecraft:trident"}
data modify storage mpmelee:settings items[-1].stats set value {damage:5.5, knockback:0,attack_speed_modifier:-0.65, range_modifier:0.3}
data modify storage mpmelee:settings items append value {item:"minecraft:mace"}
data modify storage mpmelee:settings items[-1].stats set value {damage:12.5, knockback:1,attack_speed_modifier:-0.92, range_modifier:-0.15}
#>-------------------
