#> mpweapons:_/xtem/register.1

data remove storage mpweapons:var register
data modify storage mpweapons:var register.item set from storage mpweapons:settings items[{item:"ITEM"}]
execute unless data storage mpweapons:var register.item run return fail
return 1