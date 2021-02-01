defmodule LisOperations do

  def descent?(list) when is_list(list), do: descent_p?(nil, list)
  def descent_p?(_,[]), do: true
  def descent_p?(nil, [a | tail]), do : descent_p?(a, tail)
  def descent_p?(b, [a | tail]), when  b >= a do: descent_p?(a, tail)
  def descent_p?(_,_), do: false
end

IO.puts("List Operations decent?(list")
IO.puts(ListOperations.descent?([]))
IO.puts(ListOperations.descent?([1, 2, 3, 4]))
