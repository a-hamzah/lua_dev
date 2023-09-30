
-- //CONVERT A VECTOR2D FROM LENGHT AND ANGLE TO X AND Y COMPONENTS//
function VECTOR2D(length, angle) -- takes the length and angle of a vector and computes x and y components
    local vec2d = {
        x = length * math.cos(angle);
        y = length * math.sin(angle)
    }
    return vec2d
end
local vector2D1 = VECTOR2D(1, math.pi/3)
print("First Vector > x: ".. vector2D1.x, " y: ".. vector2D1.y)
local vector2D2 = VECTOR2D(2, math.pi/4)
print("Second Vector > x: ".. vector2D2.x, " y: ".. vector2D2.y)


-- //SUM OF TWO 2D VECTORS//

function VECTORSUM(firstVector, secondVector) -- takes two vectors and add them through method of rectangular components
    local vec2dsum = {
        rx = firstVector.x + secondVector.x;
        ry = firstVector.y + secondVector.y
    }
    local ang = math.atan(vec2dsum.ry, vec2dsum.rx)
    local resultant = math.sqrt(vec2dsum.rx * vec2dsum.rx + vec2dsum.ry * vec2dsum.ry) -- returns the magnitude of resultant

    return vec2dsum, ang, resultant -- returns magnitude of resultant x and y, and angle, and overall magnitude of resultant
end
-- local vector1 = {x = 1, y = 2} -- if you want to give vectors components manually
-- local vector2 = {x = 3, y = 4}
local result, ang, resultant = VECTORSUM(vector2D1, vector2D2)
print("Resultant Vector Components > x: ".. result.rx, " y: ".. result.ry)
print("Resultant Vector Angle: " .. ang)
print("Resultant Vector Magnitude: " .. resultant)


