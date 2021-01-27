x = 5
y = case 10 do
  ^x-> "The value match with #{x}"
  _->  "The value does not macth #{x}"
end

IO.puts y

# Tuplas
{:ok, result} = case {1,"Hello",:ok} do
  {1, x, _} -> {:ok,"Hello"}
  _-> {:error, "There is not match"}
end

IO.puts result

# Listas
[:ok, result] = case [1,"Hello",:ok] do
  [1, x, _] -> [:ok,"Hello dos"]
  _-> [:error, "There is not match"]
end

IO.puts result

#caso especials de case pattern
#x = [1, 2 , 3]
result = case 1 do
  x when hd(x) -> "No match"
  x -> "value = #{x}"
end
IO.puts result

result = case -1 do
  x -> "value = #{x}"
  x when x < 0 -> "No match"
end
IO.puts result

result = case 1 do
  a -> "value = #{x}"
  _ -> "No match"
end
IO.puts result


result = case {1,2,3} do
  {_,x,3}  when x < 0 -> "Does Match"
  _ -> "Does not Match"
end
IO.puts result


