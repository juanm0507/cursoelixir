#Integer
n = 102
n_hex = 0x41 # = 65
n_octal = 0o24 # = 20

IO.puts("a = #{n}, b = #{n_hex}, c = #{n_octal}")

# Float
x = 2.71
IO.puts("round(#{x}) = #{round(x)}")
IO.puts("trunc(#{x}) = #{trunc(x)}")

x = 276.5e-2

IO.puts("round(#{x}) = #{round(x)}")
IO.puts("trunc(#{x}) = #{trunc(x)}")
IO.puts("-------------------------")
f = false
t = true
IO.puts("is_boolean(#{t}) = #{is_boolean(t)}")
IO.puts("is_boolean(#{f}) = #{is_boolean(f)}")
IO.puts("is_boolean(#{f}) = #{is_boolean(1.2)}")
IO.puts("-------------------------")
a = 2
b = 1.5
IO.puts("is_float(#{a}) = #{is_float(a)}")
IO.puts("is_float(#{b}) = #{is_float(b)}")
IO.puts("is_integer(#{a}) = #{is_integer(a)}")
IO.puts("is_integer(#{b}) = #{is_integer(b)}")
IO.puts("is_number(#{a}) = #{is_number(a)}")
IO.puts("is_number(#{b}) = #{is_number(b)}")


# variables boolenas

IO.puts("--------------------------")
IO.puts("not table")
IO.puts("not #{f} = #{not f}")
IO.puts("not #{t} = #{not t}")

IO.puts("==========================")
text = "pingüino"
IO.puts(text)
IO.puts("is_binary(\"#{text}\") = #{is_binary(text)}")
n = String.length(text)
IO.puts("is_binary(#{n}) = #{is_binary(n)}")
IO.puts("String.length(#{n}) = #{n}")
IO.puts("byte_size(\"#{text}\") = #{byte_size(text)}")

IO.puts("==========================")

atom = :my_atom
atom2 = Myatom
IO.puts("is_atom(4) = #{is_atom(4)}")
IO.puts("is_atom(atom) = #{is_atom(atom)}")
IO.puts("is_boolean(#{atom}) = #{is_boolean(atom)}")
IO.puts("is_atom(atom2) = #{is_atom(atom2)}")
IO.puts("is_boolean(#{atom2}) = #{is_boolean(atom2)}")
t = true
f = false

IO.puts("is_atom(#{t}) = #{is_atom(t)}")
IO.puts("is_atom(#{f}) = #{is_atom(f)}")

IO.puts("========================")

add = fn (x,y) ->
  x + y
end

sub = fn x , y -> x - y end

s = add.(1,2)
r = sub.(5,3)

IO.puts("is_function(add) = #{is_function(add)}")
IO.puts("is_function(sub) = #{is_function(sub)}")
IO.puts("add.(1,2) = #{s}")
IO.puts("sub.(1,2) = #{r}")


isOpen = true # false
text = ("Hello word")


five = (fn x -> x + 1 end).(4)
IO.puts("five = #{five}")

IO.puts("========================")

list = [1,"Hello", false]
IO.inspect list
IO.puts("Length (list) = #{length list}")

list = [1,"ejemplo",false] ++ [2,"ejemplo1",true]
IO.inspect list
IO.puts("Length (list) = #{length list}")

IO.puts("hd(list) = #{hd(list)}")
IO.puts("tl(list) = ")
IO.inspect tl(list)

# hd [] argument error cabeza lista
# tl[] argumento error cola lista el resto de elementos de la lista
# iex(3)  > [64,65]
# '@A'
# iex(3)  > [104,111,108,97]
# hola

IO.puts("========================")
tuple = {1,"4",3.0,true,:error}
IO.inspect tuple
{a, b, c, _, _} = tuple
IO.puts("a = #{a}, b = #{b}, c = #{c}")
IO.inspect put_elem(tuple, 2, :ok)
IO.inspect tuple

result = File.read("helloworld/hello.ex")
IO.inspect result
IO.puts "elem(result,0) = #{elem(result,0)}"

result = File.read("hello.ex")
IO.inspect result
IO.puts "elem(result,0) = #{elem(result,0)}"

a = [1,4,3,7,5,9,6,3,2,8]
b = [3,2,20,5]
IO.puts "a -- b = "
IO.inspect a -- b

IO.puts("========================")
IO.puts("4 in [3,4] = #{4 in [3,4]}")
IO.puts("4 not in [3,4] = #{4 not in [3,4]}")
IO.puts("5 in [3,4] = #{5 in [3,4]}")
IO.puts("5 not in [3,4] = #{5 not in [3,4]}")

IO.puts("========================")

IO.puts("========================")
IO.puts("(1 == 1.0) = #{1 == 1.0}")
IO.puts("(1 != 1.0) = #{1 != 1.0}")
IO.puts("(1 === 1.0) = #{1 === 1.0}")
IO.puts("(1 !== 1.0) = #{1 !== 1.0}")
IO.puts("(1.0 < 2) = #{1.0 < 2}")
IO.puts("(1.0 <= 2) = #{1.0 <= 2}")
IO.puts("(2.0 <= 2) = #{2.0 <= 2}")
IO.puts("(1.0 > 2) = #{1.0 > 2}")
IO.puts("(1.0 >= 2) = #{1.0 >= 2}")
IO.puts("(2.0 >= 2) = #{2.0 >=2}")
