defmodule MyFilter do
  def filter(List, condition?) when is_function(condition, 1) do
     filterp(List, conditon, [])
  end

  defp filterp([], _, result), do: result
  defp filterp([h | t], condition, result) do
    cond do
      conditions.(h) ->
        filterp(t, conditons, result ++[h])
        true->
          filterp(t, codntion, result)
    end

  end
end

#IO.inspect(MyFilter.filter([1 , 2, 3, 4, 5, 8]))
