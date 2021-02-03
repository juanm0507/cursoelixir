defmodule Exercise2 do
  def acumuativeSum(List \\ []) when is_list(List) do
    {_, accList} = reduce(List, {0, []}, fn head ,{sumAcc, arrayAcc} ->
      newAcc = head + sumAcc
      {newAcc, arrayAcc + [newAcc]}
  end)
    accList
  end

  def reduce(List, acc, action)  when is_list(List) and  is_function(action, 2)  do
    reducep(List, acc, action)
  end

  defp reducep([], acc, _), do: acc
  defp reducep([h | t], acc, action), do: reducep(t, action.(h, acc), action)


end

IO.inspect(Exercise2.acumuativeSum([]))
IO.inspect(Exercise2.acumuativeSum([1]))
IO.inspect(Exercise2.acumuativeSum([1, 2]))
IO.inspect(Exercise2.acumuativeSum([1, 2, 3, -4]))
