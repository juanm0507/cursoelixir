defmodule Factorial do
  def classic(n)  when is_integer(n) and n >= 0 do
    cond do
      n < 2 -> 1
      true -> facp1(n, 0, 1)
    end
  end

def fac1(n) when is_integer(n) and n >= 0 do
  facp1(n, 0, 1)
end

# acc = 1
# for(int i = 0;i < n; i++) {
 # acc = *= (i + 1) : // acc = acc * (i + 1)
#}
# return acc

def facp1(n, i, acc) when is_integer(n) do
  # if i < n do
  # facp1(n,i + 1,acc * (i + 1))
  # else
  # acc
  # end
  cond do
    i == n -> acc
    true -> facp1(n, i + 1,acc * (i + 1))
  end
end
# fac2(n) = acc(n, k * fac2(n -k)
# acc(n, k) = n *(n-1) * ....*(n - k + 1)
# acc(n, k) = acc(n, k-1) * (n - k + 1)

  def facp2(0, acc) when is_integer(acc) do
     acc
  end

  def fac2(n) when is_integer(n) and n >= 0 do
    cond do
      n < 1 -> 1
      true -> facp2(n - 1,n)
    end
  end


  def facp2(n, acc) when is_integer(n) do
    facp2(n - 1 , acc * n)
  end
end

#IO.puts (Factorial.fact1(1))
IO.puts (Factorial.classic(6))
IO.puts ("fac1(0) = #{Factorial.fac1(0)}")
IO.puts ("fac1(1) = #{Factorial.fac1(1)}")
IO.puts ("fac1(2) = #{Factorial.fac1(2)}")
IO.puts ("fac1(3) = #{Factorial.fac1(3)}")
IO.puts ("fac1(4) = #{Factorial.fac1(4)}")
IO.puts ("fac1(5) = #{Factorial.fac1(5)}")
IO.puts("=========================")

IO.puts ("fac2(3) = #{Factorial.fac2(3)}")
IO.puts ("fac2(4) = #{Factorial.fac2(4)}")
IO.puts ("fac2(5) = #{Factorial.fac2(5)}")
