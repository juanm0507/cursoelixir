IO.puts("Seccion uno")

try do
  :bar / 2
rescue
  RuntimeError -> IO.puts("There was a rutine error")
  ArithmeticError -> IO.puts("The division was not possible")
end

IO.puts("Seccion dos")

try do
  :bar / 2
rescue
  RuntimeError -> IO.puts("There was a rutine error")
  e in ArithmeticError -> IO.puts("Este es el error: #{e}")
end

IO.puts("Seccion tres")
try do
  raise CustomError, message: "My custom error"
rescue
  e in CustomError -> IO.puts("message: #{e.message}, countrty: #{e.country}")
end

try do
  raise CustomError, message: "My custom error", country: "Colombia"
rescue
  e in CustomError -> IO.puts("message: #{e.message}, countrty: #{e.country}")
end

IO.puts("Seccion cuatro--------------------------")
try do
  IO.puts("Esto no es un error")
rescue
  _ -> IO.puts("this never message")
after
  IO.puts("Siempre se muestra")
end

try do
  raise "This error"
rescue
  _ -> IO.puts("da error")
after
  IO.puts("siempre se muestra")
end


IO.puts("Seccion cinco--------------------------------")

try do
  raise "error"
catch
  e -> IO.puts("muestra en el error #{e}")
after
  IO.puts("Muestra siempre formas")
end

try do
  throw(453_637)
  IO.puts("nunca imorime")
catch
  e -> IO.puts("catch #{e}")
after
  IO.puts("Simpre muestra")
end

IO.puts("Seccion seis------------------------------")

try do
  raise "Hola"
  IO.puts("No se muestra")
rescue
  e -> IO.puts("Desde rescue #{e}")
catch

after

try do
  raise "Hola"
  IO.puts("No muestra")
rescue
  e -> IO.puts("Desde rescue #{e}")
catch

after

end

try do
  raise "Hola"
  IO.puts("No se muestra")
rescue
  e -> IO.puts("rescue #{e}")
catch
  e -> IO.puts("el catch #{e}")
after
  IO.puts("Siempre se muestra")
end

IO.puts("Seccion siete------------------------------")
try do
  throw(nil)
  IO.puts("No se muestra")
rescue
  e -> IO.puts("rescue #{e}")
catch
  e -> IO.puts("catch #{e}")
after
  IO.puts("Siempre se muestra")
end


IO.puts("Seccion ocho------------------------------")
try do
  0..20
  |> Enum.each(fn x ->
    if x == 10, do: raise("Oops! x == 10")
  end)
rescue
  e -> IO.puts("from rescue: #{e.message}")
catch
  e -> IO.puts("from catch #{e}")
after
  IO.puts("Siempre se muestra")
end

sum = try do
  1..20 |> Enum.reduce(0, fn h, acc ->
    if rem(h, 13) == 0 do
      #raise acc
      throw(acc)
    else
      h + acc
    end
  end)
#rescue
#  e in RuntimeError -> e.message
catch
  acc -> acc
end
IO.puts(sum)


#####
how_large_is = fn x ->
try do
  1/x
rescue
  ArithmeticError -> :infinity
# catch
# e -> IO.puts e
else
  d when d < 1 and d > -1 -> :small
  d when d < 10 and d > -10 -> :middle
  _->:large
after
  IO.puts "Hello"
 end
end

how_large_is.(0)
how_large_is.(1)
how_large_is.(2)
how_large_is.(0.5)
how_large_is.(0.1)
