defmodule ListOperations do

  def sum(list) when is_list(list) do
    IO.puts("Suma = #{sump(0, 0, list)}")
  end

  #defp sump(suma, i,listOne), do: 0
  #defp sump(suma,i,listOne) , do: sump(suma + Enum.at(listOne,0),0,listOne)
  def sump(i,suma,list) do
    cond do
      i < length(list) -> sump(i + 1,suma + Enum.at(list,i),list)
      true ->  suma
    end
  end
end

ListOperations.sum([])
ListOperations.sum([2, 5, 20])
ListOperations.sum([2, 5, 20, -9])
#Enum.at(list, index, default) # nil
