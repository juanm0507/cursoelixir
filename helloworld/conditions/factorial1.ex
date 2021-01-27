defmodule Factorial do
  def classic  when is_integer(n) and n >= 0 do
    cond do
      n < 2 -> 1
      true -> facp1(n, 0, 1)
    end
  end

def fac1(n) when is_integer(n) and n>0 do
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

end

#IO.puts (Factorial.classic(1,5,"for uno"))
