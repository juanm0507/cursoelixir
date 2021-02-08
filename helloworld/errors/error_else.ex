#####
how_large_is = fn x ->
  try do
    1 / x
  rescue
    ArithmeticError -> :infinity
  # catch
  # e -> IO.puts e
  else
    d when d < 1 and d > -1 -> :small
    d when d < 10 and d > -10 -> :middle
    _-> :large
  after
    IO.puts "Hello"
  end
end

  how_large_is.(0)
  how_large_is.(1)
  how_large_is.(2)
  how_large_is.(0.5)
  how_large_is.(0.1)
