defmodule ListOperations do

  def sum(list) when is_list(list), do: sump(list, 0)
  defp sump([], acc), do: acc
  defp sump([h | t], acc), do: sump(t, acc + h)

  def fact(n) when is_integer(n) and n >= 0, do: factp(n, 1)
  defp factp(0, acc), do: acc
  defp factp(n, acc), do: factp(n - 1, acc * n)

  def fibo(n) when is_integer(n) and n >= 0, do: fibop(n, 0)
  defp fibop(0, acc), do: acc
  defp fibop(n, acc), do: fibop(fibop((n - 1), acc) + fibop((n - 2), acc), acc)
end

IO.puts("List Operations sum.list")
IO.puts(ListOperations.sum([])) # 0
IO.puts(ListOperations.sum([1, 2, 3]))# 6
IO.puts(ListOperations.sum([5, 3, -1, 2]))# 9

IO.puts("List Operations factorial.list")
IO.puts(ListOperations.fact(0)) # 1
IO.puts(ListOperations.fact(1)) # 1
IO.puts(ListOperations.fact(5))# 120

IO.puts("List Operations fibonacci.list")
#IO.puts(ListOperations.fibo(0)) # 1
#IO.puts(ListOperations.fibo(1)) # 1
IO.puts(ListOperations.fibo(23)) # 1
