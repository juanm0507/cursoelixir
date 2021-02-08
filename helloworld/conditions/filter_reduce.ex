defmodule MyFilter do
  def filter(List, condition?) do
     # reduce(LIst, [], fn h,acc -> if condition?.(h), do: acc ++ [h], else: acc end)
     reduce(List, [], &(if condition?.(&1), do: &2 ++ [&1], else: &2))
  end

  def reduce(List, acc, action) when is_list(List) and is_function(action, 2) do
    reducep(List, acc, action)
  end

  defp reducep([], acc, _), do: acc
  defp reducep([h | t], acc, action), do: reducep(t, action.(h, acc), action)

end

#IO.inspect(MyFilter.filter([1 , 2, 3, 4, 5, 8]))
