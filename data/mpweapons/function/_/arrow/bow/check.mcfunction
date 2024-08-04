#> mpweapons:_/arrow/bow/check
#--------------------
# _/player/use_bow
#--------------------

data modify storage six:in magnitude.vector set from entity @s Motion
function six:api/vector/space/magnitude
#>---- D E B U G --------
data modify storage loggr:in log.message set from storage six:out magnitude.result
function loggr:api/log
#>--------------


execute on origin unless entity @s[tag=_mpweapons-bow] run return fail

data modify storage mpweapons:var arrow.data set from entity @s

data remove storage mpweapons:var arrow