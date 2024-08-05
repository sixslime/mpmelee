#> mpweapons:_/arrow/bow/check
#--------------------
# _/player/use_bow
#--------------------

execute if data storage mpweapons:settings crossbow{enable:false} run return fail
execute on origin unless entity @s[tag=_mpweapons-crossbow] run return fail

execute if data storage mpweapons:settings crossbow{can_crit:false} run data merge entity @s {crit:false}
data modify storage mpweapons:var arrow.spread_setting set from storage mpweapons:settings crossbow.spread
function mpweapons:_/arrow/spread