## AUTHOR: Picarrow

## OBJECTIVE: picarrow.math.asin
## INPUTS: $x (2 decimal precision)
## OUTPUTS: $out (2 decimal precision)

# x^2
scoreboard players operation #x_squared picarrow.math.asin = $x picarrow.math.asin
scoreboard players operation #x_squared picarrow.math.asin *= #x_squared picarrow.math.asin

# adjust for scale
scoreboard players operation #x_squared picarrow.math.asin /= #100 picarrow.math.const

# 1-x^2
scoreboard players set #p1 picarrow.math.asin 100
scoreboard players operation #p1 picarrow.math.asin -= #x_squared picarrow.math.asin

# sqrt(1-x^2)
scoreboard players operation $in picarrow.math.sqrt = #p1 picarrow.math.asin
function picarrow.math:sqrt
scoreboard players operation #p2 picarrow.math.asin = $out picarrow.math.sqrt

#adjust for scale
scoreboard players operation #p2 picarrow.math.asin /= #10 picarrow.math.const

# atan2(x,sqrt(1-x^2))
scoreboard players operation $y picarrow.math.atan2 = $x picarrow.math.asin
scoreboard players operation $x picarrow.math.atan2 = #p2 picarrow.math.asin
function picarrow.math:atan2
scoreboard players operation $out picarrow.math.asin = $out picarrow.math.atan2
