#> mpmelee:uninstall

scoreboard objectives remove -mpmelee
scoreboard objectives remove --mpmelee
scoreboard objectives remove _mpmelee-use_bow
scoreboard objectives remove _mpmelee-use_crossbow

data remove storage mpmelee:settings PERSIST
data remove storage mpmelee:settings airborne_modifiers
data remove storage mpmelee:settings items
data remove storage mpmelee:settings bow
data remove storage mpmelee:settings crossbow

data remove storage mpmelee:data _

