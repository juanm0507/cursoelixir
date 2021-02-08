###
list = for n <- [1, 2, 3, 4], do: n * n

#reading
x = 3
list = for n <- [1, 2, 3, 4], do: n + n

IO.inspect list # [1, 2, 3, 4] (as charlist)

#updating

x = 3
list = for n <- [1, 2, 3, 4] do
  x = n + x
  #^__ x is used
end

IO.inspect list # [4, 5, 6, 7]

# keywor list

values = {good: 1, good: 5, bad: -1, good: 7}
list = for {:good, n} <- values, do: n * n

IO.inspect list # [1, 25, 49]

###
values = [1, 3, 2, 6, 5, 9, 8, 24, 20]
event? =&(rem(&1, 2) == 0)
list = for n <- values, event?.(n) do: n * n
IO.inspect list # [4, 36, 64, 576, 400]


##
letters = [:x, :y, :z]
numbers = [1, 2, 3, 4]
for l <- letters <- numbers, do: {l, n}

evens = [0, 2, 4, 6, 8, 10, 12]
mod3_numbers = [0, 3, 6, 9, 12]
for _<- evens, n <- mod3_numbers , do: n
IO.inspect list

##
values = [[1, 2], [], [4, 5]]
list = for list <- values,
    n <- list do
      n
    end
IO.inspect list

##

dirs = ["./", "../process"]

for dir <- dirs,
  file <- File.ls!(dir),
  path = Path.join(dir, file)
  File.regular?(path) do
File.state!(path).size
end

###
pixels = "hello wordl"
list = for <<r::8, g::8, b::8 <- pixels>>, do: {r, g, b}
IO.inspect list


pixels = "hello wordl"
list = for <<r::8, g::8, b::8 <- pixels>>, do: {r, g, b}
IO.inspect list

pixels = "hello wordl"
list = for <<r::8, g::8, b::8 <- pixels>>, do: {r, g, b}
IO.inspect list

##
map = %{"a" => 1, "b" => 2, "a" => 3}
list = for {k, v} <- map, do: {k, v + 1}
IO.inspect list

incremnet_mao = for {k, v} <- map, into: %{}, do: {k, v + 1}
IO.inspect incremnet_map #%{"a" => 2, "b" => 3, "a" => 4

##
values = [1, 2, 1, 3, 4, 2, 5]
list = for n <- values, uniq: true, do: n + 3
IO.inspect list # [4, 5, 6, 7, 8]

##
text = "AbcBCabC"
letters = for <<c <- text>>, c in a?..z?, do: <<c>>
Enum.reduce(letters, %{}, fn c, acc -> Map.update(acc, c, 64, &(&1 + 1)) end)


text = "AbcBCabC"
letters = for <<c <- text>>, c in a?..z?, reduce: %{} do
  acc -> Map.update(acc, <<c>>, c, 64, &(&1 + 1))
end
