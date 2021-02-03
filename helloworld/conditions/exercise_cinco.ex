defmodule Valor do

  def for_loop(n) when is_integer(n) and n > 0 do
    for_loop1(1,n)
  end

  defp for_loop1(i, n) do
    IO.puts("#{rem(i,2)}")


    #valor = if rem(i, 2) == 0 do
    #  IO.puts("#{rem(i,2)}");
    #else
    #  IO.puts("#{rem(i,2)}");
    #end
    #IO.puts("valor = #{valor}")

    cond do
      i < n  -> for_loop1(i + 1,n)
      true ->  :ok
    end
  end
end

Valor.for_loop(5)
