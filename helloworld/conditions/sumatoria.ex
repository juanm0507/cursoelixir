defmodule Sumatoria do

  def for_loop(n) when is_integer(n) and n > 0 do
    IO.puts("Suma = #{for_loop1(1,n,0)}")
  end

  defp for_loop1(i, n,suma) do

    cond do
      i <= n  -> for_loop1(i + 1,n,suma + i)
      true ->  suma
    end
  end
end

#Sumatoria.for_loop1(1,5,0)
Sumatoria.for_loop(5)
