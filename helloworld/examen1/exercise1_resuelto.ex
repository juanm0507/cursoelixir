defmodule SumaryArray do
  def sumaryarray(list \\ []) when is_list(list), do: sumaryarrayp(list, [], 0)
  defp sumaryarrayp([], resultarray,_), do: resultarray
  defp sumaryarrayp([h | t], resultarray,  acc), do: sumaryarrayp(t, resultarray ++ [acc + h], acc + h)
end

IO.SumaryArray.sumaryarray([])
IO.SumaryArray.sumaryarray([])
IO.SumaryArray.sumaryarray([1])
IO.SumaryArray.sumaryarray([1, 2])
IO.SumaryArray.sumaryarray([1, 2, 3, -4])
