defmodule GenServerunoTest do
  use ExUnit.Case
  doctest GenServeruno

  test "greets the world" do
    assert GenServeruno.hello() == :world
  end
end
