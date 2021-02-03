double = fn x -> 2 * x end
triple = fn x -> 3 * x end
filter = fn n -> rem(n , 4) == 0 end
is_mod3_plus_1 = fn n -> rem(n , 3) == 1 end
is_mod3_plus_2 = fn n -> rem(n , 3) == 2 end

list = 0..7

# a |> proc(func)
# proc(a, func)

result_enum = Enum.filter(Enum.map(list, double), filter)

#result_enum = Enum.map(List, double) |>  Enum.filter(filter)
#result_enum = (List |> Enum.map(double)) |> Enum.filter(filter)

result_enum1 = list |> Enum.map(double) |> Enum.filter(filter)

IO.inspect("#{inspect(result_enum)}")
IO.inspect("#{inspect(result_enum1)}")
IO.puts("====================")

# Enum is eager
# Stream lazy
#int [] list = {1,2,.......7}
# int[] doubles = {}
# int[] result = {}
# for(i=0; i < N ;i ++) {
#    doubles[i] = doubles(List[i])
#}

#for(i=0; i < N ;i ++) {
  #    triples[i] = triple(List[i])
# }

#for(i=0; i < N ;i ++) {
#  int x []
#  if(filter(x)) {}
  #   result.push(x)
#}
# }

result =  list |> Enum.map(double) |> Enum.map(triple) |> Enum.filter(filter)

IO.inspect("#{inspect(result)}")
IO.puts("====================")

#int [] list = {1,2,.......7}
# int[] sextuplets = {}
# int[] result = {}

# for(i=0; i < N ;i ++) {
#    int x = tripl(doubles(List[i]))
#}

#for(i=0; i < N ;i ++) {
#  int x = sextuplets[i]
#  if(filter(x)) {}
  #   result.push(x)
#}


result =  list |> Stream.map(double) |> Stream.map(triple) |> Enum.filter(filter)

IO.inspect("#{inspect(result)}")
IO.puts("====================")


#int [] list = {1,2,.......7}
# int[] result = {}

#for(i=0; i < N ;i ++) {
#  int x = tripl(doubles(List[i]))
#  if(filter(x)) {}
  #   result.push(x)
#}

result =
  list
  |> Stream.map(double)
  |> Stream.map(triple)
  |> Stream.filter(filter)
  |> Enum.map(fn x -> x end)

IO.inspect("#{inspect(result)}")
IO.puts("====================")

# Enum eager
# Stream lazy
# list |> stream1 |> stream2 |> enum1 |> stream3 |> enum2 |> stream4 |> stream5 |> enum3

# filter5 = fn (x) ->
# if(!my_cond && x) do
#  some code (retur bool)
#else
#  false
# end
#end

# temporalList = |> stream1 |> stream2 |> Enum1 |> stream3 |> Enum2 |> stream4
# result = if my_cond do
#   temporal |> enum3
#   else
#    temporal |> stream5 |> Enum5
#   end

#################################

result = 0..7 |> Stream.drop(2) |> Enum.take(3)
IO.inspect("#{inspect(result)}")
IO.puts("====================")

#int [] list = {1,2,.......7}
# int[] result = {}

#for(i=0; i < N ;i ++) {
#  int x = double(List[i]))
#  if(is_mod3_plus_2(x))) {}
  #   result.push(x)
#}

#result = 0..7 |> Stream.map(double) |> Enum.filter(is_mod3_plus2)
result = 0..7 |> Stream.map(double) |> Enum.filter(is_mod3_plus_2) |> Enum.map(fn x -> x end)
IO.inspect("#{inspect(result)}")


#int [] list = {1,2,.......7}
# int[] result = {}

#for(i=0; i < N ;i ++) {
#
#  if(is_mod3_plus_2(x))) {
 #int x = double(List[i]))
  #   result.push(x)
#}


result = 0..7 |> Stream.filter(is_mod3_plus_1) |> Stream.map(double) |> Enum.map(fn x -> x end)
IO.inspect("#{inspect(result)}")
IO.puts("====================")
