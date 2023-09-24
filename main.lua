print("What's up?")
print("His name" .. " is " .. "John")

local num = 7
print(num)
print(num + 1)

local name = "Ameer"
print("His name is " .. name .. ". He is very " .. name.. " .")

local firstName = "Jack"
local secondName = "Smitter"
print(firstName .." ".. secondName)

local des = [[-what are you
-no way there
-what do you do?]]
print(des)

-- Strings
local name1 = "John Wick"
print(#name1) -- string length
local name2 = "Team"
print(name2)
-- Conversion from number to string
local xo = 22
local str = tostring(xo)
print(type(xo))
print(type(str))

local ki = "BIG BAD WOODOO"
print(string.lower(ki))

-- print a part of string
local ko = "Hello World"
print(string.sub(ko, 6,10))

-- conversion from ASCII to string and vice versa

print(string.char(65))
print(string.byte("a"))

local lo = "Aa"
print(string.byte(lo, 1, 99)) -- converts the lo string to ASCII

print(string.rep("Kick!", 10, ":")) -- repeat something

local first, last = string.find("Hello World!", "ello") -- position of letters in a string (starts from 1)
print("First: " .. first .. "\nLast: " .. last)

local ch = string.gsub("King", "n", "!") -- to replace a letter inside string
print(ch)