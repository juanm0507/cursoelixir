map = %{:a => 5,2 => "hello", true => :ok} # %{:a => ,2 => "hello", true => :ok}
IO.puts "map = %{:a => ,2 => "hello", true => :ok}"

map = %{:a => 5,2 => "hello", 2 => :ok} # %{2 => "hello", a => :ok}
IO.puts map[:c] # nil

%{2 => b, :a => a}  = %{:a => 5, 2 => true} # a = true , b = 5
%{:a => a, :a => a}  = %{:a => 5, b => 2} # a = 5
%{:c => a, :a => a}  = %{:a => 5, 2 => true} # thorw error
%{}  = %{:a => 5, 2 => true} # a = true , b = 5

key = 5
map = %{:a => true, key => :ok} #%{5 => "hello", key => :ok}
IO:puts map[key] # hello
%{^key => valu} = map # valur = "hello"
IO.puts value # hello


# Operations

map = %{:a => 5,2 => "hello", true => :ok} #
IO.puts Map.get(map, :a) #5

map2 = Map.get(map, :c, 4) # %{2 => "hello",:a => 5,:c => 4,true =>:ok}
IO.puts (map2 == map) # false

map3 = Map.get(map2, :c, false) #  %{2 => "hello",:a => 5,:c => false,true =>:ok}
IO.puts (map2 == map3) #false

map4 = %{map | :a => "bye"} #
IO.puts (map4==map) # false
IO.puts map.a # 5
IO.pust map[:a] # 5

users = [
  Frank : %{lastname: "Moreno",country: "Peru"}
  # Frank : %{:lastname => "Moreno",:country => "Peru"}
  Juan : %{lastname: "Meza",country: "Colombia"}
]

IO.puts users[:Frank].lastname # Moreno
# users.frank # Throws Error argument error
