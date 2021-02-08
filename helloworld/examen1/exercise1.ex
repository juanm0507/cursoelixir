defmodule SumAccumulate do

  def sum(list) when is_list(list) do
    listVacia = []
    IO.inspect("#{sump(0,0,list,listVacia)}")
  end

  defp sump(i,suma,list,listr) do
    cond do
      length(list) == 0 -> 0
      #i < length(list) -> sump(i + 1,suma + Enum.at(list,i),list,listr ++ [suma])
      i < length(list) -> sump(i + 1,suma + Enum.at(list,i),list,listr ++ [suma])

      true ->  listr
    end
  end
end

SumAccumulate.sum([])
SumAccumulate.sum([2, 5, 20, 7])
