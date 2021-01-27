list = [1,2]
list ++ [3,4]
list = [{:a 1},{:b 5}]
[a: 1, b: 5]
[a: 1, b: 5] ++ [:c 3, :b 4]
[[], [1],[2,3],[3,4]]
list = [a: 2,b: 5]
Enum.at(list,2)
Enum.at(list,1)
Enum.at(list,0)
list[0]
list[:b]
[{:a 1},{:b 2}, {:c 3}]
list[:a]
list = [a: 0,b: 1,c:2]
list[:a]
list[:b]
[x] = [a: 1]
[{:a, z}] = [{:a, 1}]
[{:a, z},_] = [a: 1, b: 2]
[a: 1] = [a: 1,b: 2] # Error
# Enum(list, index) returnts the a value index
