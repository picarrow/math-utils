## AUTHOR: Picarrow

## OBJECTIVE: picarrow.math.edist
## INPUTS: $x1, $y1, $z1, $x2, $y2, $z2
## OUTPUTS: $out (2 decimal precision)

# Compute squared distances
scoreboard players operation #dx picarrow.math.edist = $x2 picarrow.math.edist
scoreboard players operation #dx picarrow.math.edist -= $x1 picarrow.math.edist
scoreboard players operation #dx_squared picarrow.math.edist = #dx picarrow.math.edist
scoreboard players operation #dx_squared picarrow.math.edist *= #dx picarrow.math.edist

scoreboard players operation #dy picarrow.math.edist = $y2 picarrow.math.edist
scoreboard players operation #dy picarrow.math.edist -= $y1 picarrow.math.edist
scoreboard players operation #dy_squared picarrow.math.edist = #dy picarrow.math.edist
scoreboard players operation #dy_squared picarrow.math.edist *= #dy picarrow.math.edist

scoreboard players operation #dz picarrow.math.edist = $z2 picarrow.math.edist
scoreboard players operation #dz picarrow.math.edist -= $z1 picarrow.math.edist
scoreboard players operation #dz_squared picarrow.math.edist = #dz picarrow.math.edist
scoreboard players operation #dz_squared picarrow.math.edist *= #dz picarrow.math.edist

# Compute sum of squared distances
scoreboard players set #distance picarrow.math.edist 0
scoreboard players operation #distance picarrow.math.edist += #dx_squared picarrow.math.edist
scoreboard players operation #distance picarrow.math.edist += #dy_squared picarrow.math.edist
scoreboard players operation #distance picarrow.math.edist += #dz_squared picarrow.math.edist

# Compute distance
scoreboard players operation $in picarrow.math.sqrt = #distance picarrow.math.edist
function picarrow.math:sqrt
scoreboard players operation $out picarrow.math.edist = $out picarrow.math.sqrt
