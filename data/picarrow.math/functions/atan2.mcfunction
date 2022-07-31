## AUTHOR: Picarrow

## OBJECTIVE: picarrow.math.atan2
## INPUTS: $y, $x
## OUTPUTS: $out (2 decimal precision)

summon minecraft:armor_stand ~ ~ ~ {Tags:["picarrow.math.atan2_dummy"],Marker:1b}
execute as @e[tag=picarrow.math.atan2_dummy] run function picarrow.math:_private/atan2
