#> mpmelee:_/arrow/bow/check
#--------------------
# _/player/use_bow
#--------------------

execute if data storage mpmelee:settings crossbow{enable:false} run return fail
execute on origin unless entity @s[tag=_mpmelee-crossbow] run return fail

execute if data storage mpmelee:settings crossbow{can_crit:false} run data merge entity @s {crit:false}
data modify storage mpmelee:var arrow.spread_setting set from storage mpmelee:settings crossbow.spread
function mpmelee:_/arrow/spread