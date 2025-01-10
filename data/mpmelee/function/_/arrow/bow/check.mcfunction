#> mpmelee:_/arrow/bow/check
#--------------------
# _/player/use_bow
#--------------------

execute if data storage mpmelee:settings bow{enable:false} run return fail
execute on origin unless entity @s[tag=_mpmelee-bow] run return fail

execute if data storage mpmelee:settings bow{can_crit:false} run data merge entity @s {crit:false}
data modify storage mpmelee:var arrow.spread_setting set from storage mpmelee:settings bow.spread
function mpmelee:_/arrow/spread