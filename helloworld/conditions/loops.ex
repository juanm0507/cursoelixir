defmodule Loop do

# int i = 0;
# while(true){
#   unless(i < n) break;
#   pritn(value);
#   i++;
#}

  def for_loop(i, n, value) do
    cond do
      i < n ->
        IO.puts("#{value} #{i}")
        for_loop(i + 1,n, value)
        true ->
          :ok
    end
  end
# int i = 0;
# while(true){
#   print(value);
#   i++;
#   if(i == n) {
#     break;
#   }
#}

  def do_while1(i, n, value) when i < n do
    IO.puts("#{value} #{i}")
    do_while1(i + 1,n, value)
  end

  def do_while1(i, n, value) do
    :ok
  end

  def for_loop1(i, n, value) do

    if i < n do
      IO.puts("#{value} #{i}")
      for_loop1(i + 1,n, value)
    else
        :ok
    end
  end


end

IO.puts (Loop.for_loop(1,5,"for uno"))
IO.puts (Loop.do_while1(1,3,8))

#IO.puts (Loop.for_loop1(1,5,8))
#IO.puts (Loop.for_loop2(1,6,8))
