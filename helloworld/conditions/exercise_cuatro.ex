defmodule Mcd do

  def gcd(a,b) do
    IO.puts("#{a}, #{b}")
    valor = cond do
      b == 0 -> a
      b > a -> gcd(b, a)
      true -> gcd(a - b, b)
    end
  end
end

IO.puts Mcd.gcd(180, 48)
