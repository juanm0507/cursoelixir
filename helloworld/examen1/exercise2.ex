defmodule SumAccumulate do

  #def sum(list) when is_list(list), do: sump(list, 0)
  #defp sump([], acc), do: acc
  #defp sump([h | t], acc), do: sump(t, acc + h)

  def sum(list) when is_list(list), do: sump(list, 0)
  defp sump([], acc), do: acc
  defp sump([h | t], acc), do: sump(t, acc + h)

  #def sum([]), do: 0
  #def sum([h | t]) do
  # h + sum(t)
  # end
end


IO.puts("List Operations sum.list")
IO.puts(SumAccumulate.sum([])) # 0
IO.inspect(SumAccumulate.sum([1, 2, 3]))# 6
#IO.puts(SumAccumulate.sum([5, 3, -1, 2]))# 9
