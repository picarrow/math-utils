## AUTHOR: Picarrow

## OBJECTIVE: picarrow.math.sin
## INPUTS: $x (2 decimal precision)
## OUTPUTS: $out (2 decimal precision)

summon minecraft:armor_stand ~ ~ ~ {Tags:["picarrow.math.sin_dummy"],Marker:1b}
execute as @e[tag=picarrow.math.sin_dummy] run function picarrow.math:_private/sin
