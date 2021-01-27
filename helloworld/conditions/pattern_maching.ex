{a,b,c} = {1,"hello",:ok}
{a,_,c} = {1,"hello",:ok}

b = true
{a,^b,c} = {1,true,":ok"}

b = false
{a,^b,_} = {1,true,":ok"}

{x, x} = {2, 2} # x = 2
{x, x} = {2, 3} # Error

[a,b,c] = [1,"hello",:ok]
[a,_,c] = [1,"hello",:ok]

b = true
[a,^b,c] = [1,true,":ok"]

b = false
[a,^b,_] = [1,true,":ok"]

#====================
  [head | tail] = [] # Error
  [head | tail] = [5.0]  # head 5.0 tail []
  [head | tail] = [5.0,3] #head 5.0 tail [3]
  [head | tail] = [5.0,3,:0k] #head 5.0 tail [3,:ok]

  [_ | tail] = [5.0,3,:ok] # tail = [3,:ok]
  [head | _] = [5.0,3,:ok] # head = 5.0

  [1 | tail] = [1,2,3] #tail[2,3]
  [2 | tail] = [1,2,3] # error

  a = 1
  [^a | tail] = [1,2,3] # tail [2,3]

  a = 2
  [^a | tail] = [1,2,3] # Error

