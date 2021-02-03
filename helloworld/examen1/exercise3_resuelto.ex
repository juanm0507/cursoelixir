defmodule Descendant do
  def is_descendant(List) when is_list(List), do: is_descendant?(nil, List)
  def is_descendant?(_, []), do: true
  def is_descendant?(nil, [h | tail]), do: is_descendant?(h, tail)
  def is_descendant?(aux, [h | tail]) when aux >= h, do: is_descendant?(h, tail)
  def is_descendant?(_, _), do: false
end

IO.inspect(Descendant.is_descendant([]))
IO.inspect(Descendant.is_descendant?([]))
IO.inspect(Descendant.is_descendant?([1]))
IO.inspect(Descendant.is_descendant?([1, 2, 3]))
IO.inspect(Descendant.is_descendant?([1, 2, 3, 4]))
IO.inspect(Descendant.is_descendant?([1, 2, 3, 4, 5]))
IO.inspect(Descendant.is_descendant?([7, 5, 2]))
IO.inspect(Descendant.is_descendant?([7, 4, 2, 1]))
IO.inspect(Descendant.is_descendant?([8, 7, 6, 5, 4 , 3]))
