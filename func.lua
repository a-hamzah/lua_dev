-- delcaring a global function
function DoMath(n)
    local y = n^2
    local z = n-1
    print(y, z)
end

DoMath(7) -- calling function

-- delcaring local functions

local function sayHello(name)
    print('Hello ' .. name)
end

sayHello('Hamza') -- called function

-- writing a function to add two numbers

local function addNums(x,y)
    print(x+y)
end
addNums(3,4)

-- another method

local function addNums1(num1, num2)
    return num1 + num2
end
print(addNums1(1,3))

print(math.random())
print(math.pi)
print(math.random(5)) -- prints the number between 1 to 5
print(math.random(50,60))
-- print(math.randomseed(os.time()))

-- if we have a list
local function minNum()
    local p = math.min(10, 5, 7, 9, 11)
    return p
end
print(minNum())

print(math.max(120, 300, 400, 740))