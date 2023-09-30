T = { x = "King", y = 10}
print(T.x)
print(T['x'])


T1 = {2, 3, 9}
print(T1[1] .. T1[2] .. T1[3])
T1[4] = 7
print(T1[1] .. T1[2] .. T1[3] .. T1[4])


function table.print(t)
    for key,value in pairs(t) do
       print(key .. " -> " .. value)
    end
 end
 table.print(T)
 table.print(T1)
 print("---After Sorting---")

 table.sort(T1, function(a, b) return a > b end)
 table.print(T1)

 t = {
    { str = 42, dex = 10, wis = 100 },
    { str = 18, dex = 30, wis = 5 }
 }
 table.sort(t, function (k1, k2) return k1.str < k2.str end )
 for i,v in pairs(t) do print(v.str,v.dex,v.wis) end