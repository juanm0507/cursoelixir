defmodule ExerciseTres do

  def for_exercise(a,b) do
    IO.puts("#{a}, #{b}")
    cond do
      a == 0 or b == 0 -> 0
      a == b -> for_exercise(a - 1 ,b - 1) + 2 * a- 1
      a > b -> for_exercise(a - b, a) + for_exercise(b, b)
      a < b -> for_exercise(a , a) + for_exercise(b - a, a)
      true -> :ok
    end
  end
end

ExerciseTres.for_exercise(5, 8)
