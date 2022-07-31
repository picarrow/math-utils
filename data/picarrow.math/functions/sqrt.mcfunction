## AUTHOR: CloudWolf
## ADAPTED BY: Picarrow

## OBJECTIVE: picarrow.math.sqrt
## INPUTS: $in
## OUTPUTS: $out (2 decimal precision)

scoreboard players operation #in_scaled picarrow.math.sqrt = $in picarrow.math.sqrt
scoreboard players operation #in_scaled picarrow.math.sqrt *= #10000 picarrow.math.const
scoreboard players set #estimate picarrow.math.sqrt 1255
function picarrow.math:_private/newton_raphson
scoreboard players operation $out picarrow.math.sqrt = #estimate picarrow.math.sqrt
