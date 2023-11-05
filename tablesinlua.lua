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

 nestedTable = {
    { x=4, label="Huey" },
    { x=56, label="Dewey" },
    { x=0.6, label="Louie" }
 }
 
 -- Sort it by x in increasing order
 table.sort(nestedTable, function(a,b) return a.x < b.x end)
 print(nestedTable[1].x .. " " .. nestedTable[2].x .. " " .. nestedTable[3].x)
 
 -- Sort it by x in decreasing order
 table.sort(nestedTable, function(a,b) return a.x > b.x end)
 print(nestedTable[1].x .. " " .. nestedTable[2].x .. " " .. nestedTable[3].x)

 
 -- Sort it by label in increasing order
 table.sort(nestedTable, function(a,b) return a.label < b.label end)
 print(nestedTable[1].label .. " " .. nestedTable[2].label .. " " .. nestedTable[3].label)

 
 -- Sort it by label in decreasing order
 table.sort(nestedTable, function(a,b) return a.label > b.label end)
 print(nestedTable[1].label .. " " .. nestedTable[2].label .. " " .. nestedTable[3].label)

 A = {{0,0,0}, {0,0,0}, {0,0,0}}
 for i=1, #A, 1 do
   for j=1, #A, 1 do
      if i==j then
         A[i][j] = 1 
      end
   end
 end
 table.print(A)