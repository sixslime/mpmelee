#> mpweapons:uninstall

scoreboard objectives remove -mpweapons
scoreboard objectives remove --mpweapons
scoreboard objectives remove _mpweapons-use_bow
scoreboard objectives remove _mpweapons-use_crossbow

data remove storage mpweapons:settings PERSIST
data remove storage mpweapons:settings airborne_modifiers
data remove storage mpweapons:settings items
data remove storage mpweapons:settings bow
data remove storage mpweapons:settings crossbow

data remove storage mpweapons:data _

