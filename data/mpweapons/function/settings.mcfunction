#>mpweapons:settings

#declare storage mpweapons:settings
data modify storage mpweapons:settings PERSIST set value false

#>-------------------
#> airborne_modifiers[] : {type: $attribute_type, amount: float, operation: $attribute_operation}
#-------------------
#~ attribute modifiers given to the player when they are airborne (not on ground).
#-------------------
#- these modifiers are intended for rebalancing critical hits.
#-------------------
 data modify storage mpweapons:settings airborne_modifiers set value []
 data modify storage mpweapons:settings airborne_modifiers append value {type:"minecraft:generic.attack_speed", amount:-0.5, operation:"add_multiplied_total"}
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
#   
#-------------------
# - 
#-------------------
data modify storage mpweapons:settings items set value []
data modify storage mpweapons:settings items append value {item:"minecraft:iron_hoe"}
data modify storage mpweapons:settings items[-1].stats set value {damage:3.0, knockback:0, attack_speed_modifier:-0.5, range_modifier:0}
data modify storage mpweapons:settings items append value {item:"minecraft:iron_axe"}
data modify storage mpweapons:settings items[-1].stats set value {damage:6.0, knockback:0,attack_speed_modifier:-0.78, range_modifier:0}
data modify storage mpweapons:settings items append value {item:"minecraft:iron_pickaxe"}
data modify storage mpweapons:settings items[-1].stats set value {damage:8.0, knockback:0,attack_speed_modifier:-0.85, range_modifier:-0.2}
data modify storage mpweapons:settings items append value {item:"minecraft:iron_sword"}
data modify storage mpweapons:settings items[-1].stats set value {damage:5.0, knockback:0,attack_speed_modifier:-0.7, range_modifier:-0}
data modify storage mpweapons:settings items append value {item:"minecraft:iron_shovel"}
data modify storage mpweapons:settings items[-1].stats set value {damage:4.0, knockback:0.8,attack_speed_modifier:-0.74, range_modifier:0.1}
data modify storage mpweapons:settings items append value {item:"minecraft:trident"}
data modify storage mpweapons:settings items[-1].stats set value {damage:6.0, knockback:0,attack_speed_modifier:-0.67, range_modifier:0.35}
#>-------------------

#>-------------------
#> bow.enable : bool
#-------------------
#~ enable custom behavior of arrows shot by bows.
#-------------------
#- 
#-------------------
 data modify storage mpweapons:settings bow.enable set value true
#>-------------------

#>-------------------
#> bow.spread : {angle:{min: float, max: float}, magnitude:{min: float, max: float}}
#-------------------
#~ random spread of shot arrows (added to minecraft's vanilla spread)
#-------------------
#- 
#-------------------
 data modify storage mpweapons:settings bow.enable set value true
#>-------------------

#>-------------------
#> crossbow.enable : bool
#-------------------
#~ enable custom behavior of arrows shot by crossbows.
#-------------------
#- 
#-------------------
 data modify storage mpweapons:settings crossbow.enable set value true
#>-------------------