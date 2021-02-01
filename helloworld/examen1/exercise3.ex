defmodule SortVacia do

  def sort(list) when is_list(list) do
    IO.inspect("#{sortp(0,list)}")
  end

  defp sortp(i, list) do
    cond do
      length(list) == 0 -> true
      # i < length(list) -> sortp(i + 1, list[i] >= list[i + 1])
      i > length(list) -> sortp(i + 1, list[i])
      true -> :ok
    end
  end
end

SortVacia.sort([])
SortVacia.sort([2, 5, 20])
