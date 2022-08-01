## AUTHOR: Picarrow

## OBJECTIVE: picarrow.math.cos
## INPUTS: $x (2 decimal precision)
## OUTPUTS: $out (2 decimal precision)

summon minecraft:armor_stand ~ ~ ~ {Tags:["picarrow.math.cos_dummy"],Marker:1b}
execute as @e[tag=picarrow.math.cos_dummy] run function picarrow.math:_private/cos
