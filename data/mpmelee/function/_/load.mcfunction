#>mpmelee:_/load
#--------------------
# @LOAD
#--------------------

# load
scoreboard players set *mpmelee load-status 1

# settings
execute unless data storage mpmelee:settings {PERSIST:true} run function mpmelee:settings

#declare storage mpmelee:var
#declare storage mpmelee:in
#declare storage mpmelee:out
#declare storage mpmelee:data
#declare storage mpmelee:hook
#declare storage mpmelee:implement

# scoreboards
scoreboard objectives add -mpmelee dummy
scoreboard objectives add --mpmelee dummy
#scoreboard objectives add mpmelee-scoreboard dummy

# cache
function mpmelee:_/cache/generate
