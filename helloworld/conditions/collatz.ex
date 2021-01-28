defmodule Collatz do
  def for_collatz(n) when is_integer(n) and n > 0 do
    IO.puts("#{n}")
    if n > 1 do
      valor = if rem(n, 2) == 0 do
         div(n, 2)
      else
         (n * 3) + 1
      end
      for_collatz(valor)
    end
  end
end

Collatz.for_collatz(23)
