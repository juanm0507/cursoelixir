defmodule GenServeruno do
  @moduledoc """
  Documentation for `GenServeruno`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> GenServeruno.hello()
      :world

  """
  def hello do
    :world
  end

  def inicio() do
    {:ok, observer} = GsObserver.create(0)
    GsObserver.read(observer) |> IO.inspect()
    GsObserver.attach(observer) |> IO.inspect()
    GsObserver.increment(observer, 100) |> IO.inspect()
    GsObserver.decrement(observer, 10) |> IO.inspect()
    GsObserver.read(observer) |> IO.inspect()
  end
end
