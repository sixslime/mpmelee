#> mpweapons:_/arrow/bow/check
#--------------------
# _/player/use_bow
#--------------------

execute if data storage mpweapons:settings bow{enable:false} run return fail
execute on origin unless entity @s[tag=_mpweapons-bow] run return fail

execute if data storage mpweapons:settings bow{can_crit:false} run data merge entity @s {crit:false}
data modify storage mpweapons:var arrow.spread_setting set from storage mpweapons:settings bow.spread
function mpweapons:_/arrow/spread