defmodule LisOperations do
  def sum(list) when is_list(list), do: sump(list, 0)
  defp sump([], acc), do: acc
  defp sump(h | t, acc), do: sump(t, h + acc)


  def reverse(list) when is_list(list), do: resversep1(list, [], Length(list))
  def reversep1(list,reversedList, len) when len < 2, do: list ++ resersedList
  def reversep1([h | t], reversedList, len) do reversep1(t, [h]) ++ reversedList, len - 1)

  def ascendant?(list) when is_list(list), do: ascendantp?(nil, list)
  def ascendant?(_,[]), do: true
  def ascendant?(nil, [b | tail]), do : ascedant_p?(b, tail)
  def ascendant?(a, [b | tail]), when  a <= b, do: acendant_p?(b, tail)
end
IO.puts("List Operations sum.list")
IO.puts(ListOperation.sum([])) # 0
IO.puts(ListOperation.sum([1,2,3]))# 6
IO.puts(ListOperation.sum([5,3,-1,2]))# 9


IO.puts("List Operations reverse(list")
IO.puts(ListOperation.reverse([])) # []
IO.puts(ListOperation.reverse([1]))# [1]
IO.puts(ListOperation.reverse([2, 3]))# [3, 2]
IO.puts(ListOperation.reverse([2, 5, 7]))# [7, 5, 2]
IO.puts(ListOperation.reverse([9, 6, 4 , 5]))# [5, 4,6 , 9]


IO.puts("List Operations reverse1(list")
IO.puts(ListOperation.reverse([])) # []
IO.puts(ListOperation.reverse([1]))# [1]
IO.puts(ListOperation.reverse([2, 3]))# [3, 2]
IO.puts(ListOperation.reverse([2, 5, 7]))# [7, 5, 2]
IO.puts(ListOperation.reverse([9, 6, 4 , 5]))# [5, 4,6 , 9]


IO.puts("List Operations ascendant?(list")
IO.puts(ListOperation.ascendant?([])) # true
IO.puts(ListOperation.ascendant?([1])) # true
IO.puts(ListOperation.ascendant?([1, 2, 3])) # true
IO.puts(ListOperation.ascendant?([1, 2, 3 ,4])) # true
IO.puts(ListOperation.ascendant?([1, 2, 3 ,4, 5])) # true
IO.puts(ListOperation.ascendant?([2, 1, 3 ,4, 5])) # true

IO.puts(ListOperation.ascendant?([2, 1, 3 ,4, 5])) # true
IO.puts(ListOperation.ascendant?([2, 1, 3 ,4, 5])) # false
IO.puts(ListOperation.ascendant?([2, 1, 3 ,4, 5])) # false
