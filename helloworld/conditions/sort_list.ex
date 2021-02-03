defmodule ListOperations do

  def sort_asc(list)  when is_list(list) do
      listr = []
      sortp(length(list), list, listr)
  end

  defp sortpp(i,list,listr) do
    IO.inspect(listr)
    cond do
        i < 0 -> sortp(i - 1,Enum.at(list,i),listr ++ Enum.at(list,i))
        true ->  listr
    end
  end
end

IO.puts(ListOperations.sort_asc([4, 2, 1, 6]))
