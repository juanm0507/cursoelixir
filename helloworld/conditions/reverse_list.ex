  defmodule ListOperations do

    def reverse(list)  when is_list(list) do
        listr = []
        reversep(length(list), list, listr)
        #Enum.reverse(list)
    end

    defp reversep(i,list,listr) do
      #IO.inspect(Enum.reverse(list))
      cond do
          i > 0 -> reversep(i - 1,list, listr ++ [Enum.at(list,i - 1)])
          true ->  listr
      end
    end
  end

  IO.inspect(ListOperations.reverse([64, 65, 66, 67,68]))
  #Enum.at(list, index, default) # nil
  #List.replace_at([1,2,3],1,4) # [1, 4, 3]
