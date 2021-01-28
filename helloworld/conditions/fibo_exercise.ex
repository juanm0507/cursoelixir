defmodule Fibonacci do

  def for_fibo1(n) when is_integer(n) and n > 0 do
    #IO.puts(n)
    cond do
      n > 2 -> for_fibo1(n - 1) + for_fibo1(n - 2)
      n == 1 or n == 2 -> 1
      true -> :ok
    end
  end
end

IO.puts Fibonacci.for_fibo1(5)
IO.puts Fibonacci.for_fibo1(6)
IO.puts Fibonacci.for_fibo1(7)
IO.puts Fibonacci.for_fibo1(8)
