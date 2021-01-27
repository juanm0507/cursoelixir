result = cond do
  2 + 3 == 4 -> "2 + 3 = 4"
  2 * 3 == 4 -> "2 * 3 = 4"
  1 + 1 == 2 -> "1 + 1 = 2"
end
IO.puts result

result = cond do
  2 + 3 == 4 -> "2 + 3 = 4"
  2 * 3 == 4 -> "2 * 3 = 4"
  1 + 2 == 2 -> "1 + 2 = 2"
  true ->  nil  # Imprime null Needed  when the res of cases are false
end

IO.puts result

result  = cond do
  hd([2,"hello",:ok]) -> "2  works as true"
end

IO.puts result # "2  works as true"

result  = cond do
  hd([0,"hello",:ok]) -> "0  works as true"
end

result  = cond do
  hd(["hello",0,:ok]) -> "\"hello\"  works as true"
end

IO.puts result # "0  works as true"

result  = cond do
  hd(["",0,:ok]) -> "\"\"  works as true"
end

IO.puts result # ""  works as true"

result  = cond do
  hd([:ok,"",0]) -> ":ok works as true"
end

IO.puts result # :ok  works as true"

result  = cond do
  hd([:error,"",0]) -> ":error works as true"
end

IO.puts result # :error  works as true"

result  = cond do
  hd([true,:error,0]) ->
    "true works as true"
end

IO.puts result # true  works as true"

result  = cond do
  hd([false,:error,0]) -> "false works as true"
end

IO.puts result # false works as true"
