defmodule Math do
  @typedoc """
  A division result can  be a
    {:ok, result} where  result is a number
    atom         :: infinity, :nan
    {:error, :msg} : where  msg is a string
  """

  @type division_result :: {atom(), number()} | {atom(), String.t()}
  @spec div(number(), number()) :: division_result

  def div(a, b) when is_number(a) and is_number(b) do
    try do
      a / b
    rescue
      ArithmeticError ->
        cond do
          b != 0 -> {:error, "unexpected error"}
          a == 0 -> :nan
          true -> :infinity
        end
    else
      result -> {:ok, result}
    end
  end
end

IO.inspect Math.div(2,0)
IO.inspect Math.div(2,3)
IO.inspect Math.div(1,2)
