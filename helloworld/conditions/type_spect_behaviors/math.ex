defmodule Math do
  @typedoc """
  A division result can  be a
    {:ok, result} where  result is a number
    {:error, :infinity}
  """

  @type division_result :: {atom(), number()} | {atom(), atom()}
  @spec div(number(), number()) :: division_result

  def div(a, b) when is_number(a) and is_number(b) do
    try do
      a / b
    rescue
      ArithmeticError -> {:error, :infinity}
    else
      result -> {:ok, result}
    end
  end
end

IO.inspect Math.div(2,0)
IO.inspect Math.div(2,3)
IO.inspect Math.div(1,2)
