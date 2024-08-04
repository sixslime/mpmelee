#>mpweapons:settings

#declare storage mpweapons:settings
data modify storage mpweapons:settings PERSIST set value false

#>-------------------
#> assumed_attack_speed : float
#-------------------
#~ the assumed base attack speed for use in calculating the attack speed modifier that weapons are given.
#-------------------
#- {mpweapons:settings items[].stats.attacks_per_second} is divided by this value to generate accurate attack speed modifiers.
#- in most cases, this should be 4.0 (minecraft default player base attack speed).
#-------------------
 data modify storage mpweapons:settings assumed_attack_speed set value 4.0
#>-------------------

#>-------------------
#> items[] : {item: string, stats[]: {damage: float, attack_speed: float, range_modifier: float}}
#-------------------
# ~ item: the item id that the given entry applies too.
# ~ stats:
#   * damage: the damage this weapon deals when fully changed.
#   * attack_speed: how fast this weapon recharges after being swung. (can be thought of fully charged attacks per second)
#   * range_modifier: percent increase/decrease of attack range when wielding the weapon. (ex: 0.4 = +40%)
#-------------------
# - 
#-------------------
data modify storage mpweapons:settings items set value []
data modify storage mpweapons:settings items append value {item:"minecraft:iron_hoe"}
data modify storage mpweapons:settings items[-1].stats set value {damage:3.0, attack_speed:1.8, range_modifier:0f}
data modify storage mpweapons:settings items append value {item:"minecraft:iron_pickaxe"}
data modify storage mpweapons:settings items[-1].stats set value {damage:8.0, attack_speed:0.6, range_modifier:-0.2}
#>-------------------

#>-------------------
#> items[] : {item: string, stats[]: {damage: float, attack_speed_modifier: float, range_modifier: float}}
#-------------------
# ~ item: the item id that the given entry applies too.
# ~ stats:
#   * damage: increase of attack damage when using this weapon.
#       - adds onto the player's base attack damage, which is default 1.0.
#       - ex: setting this value to 5.0 would make this weapon's damage 6.0.
#   * attack_speed_modifier: percent increase/decrease of attack speed when using this weapon.
#       - default attack speed is 4.0.
#       - ex: setting this value to -0.5 would make the weapon's attack speed 2.0.
#   * range_modifier: percent increase/decrease of attack range when using the weapon.
#       - default attack range is 3.0.
#       - ex: setting this value to 0.1 would make the weapon's attack range 3.3.
#-------------------
# - 
#-------------------
data modify storage mpweapons:settings items set value []
data modify storage mpweapons:settings items append value {item:"minecraft:iron_hoe"}
data modify storage mpweapons:settings items[-1].stats set value {damage:3.0, attack_speed:1.8, range_modifier:0f}
data modify storage mpweapons:settings items append value {item:"minecraft:iron_pickaxe"}
data modify storage mpweapons:settings items[-1].stats set value {damage:8.0, attack_speed:0.6, range_modifier:-0.2}
#>-------------------
