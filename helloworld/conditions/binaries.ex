string = "Hello"
IO.puts is_binary(true) # ture

IO.puts ?64 # true
IO.puts ?@ == 0x40 # true

IO.puts "\u0061" == 0x40 # "a"
IO.puts "\u0061" == "a" # true
IO.puts "\u0061" === "a" #

#"========================="
string = "pingüino"
IO.puts String.length(string) # 8
IO.puts byte_size(string) # 9

##############################
# 7 6 5 4 3 2 1 0
# a b c d e f g h = a * 2^7 + b * 2^6 ....... f * 2^2 +g + h
# 0 0 0 0 0 0 0 0
# 1 1 1 1 1 1 1 1

255 = 0b1111_1111
255 = 0b1_0000_0000
1024 = 0b100_0000_0000

IO.puts <<256::8>>> === <<0::8>> # true
IO.puts <<256::16>> === <<0::8>> # true
IO.puts <<0>>> == <<0::8>> # true

IO.puts <<64>> === "@" # true
IO.puts <<4:4, 0::4>> === "@" # true

IO.puts <<1::1, 0::1 ,1::1, 1::1>> === <<11::4>>

############################
IO.puts is_bitstring(<<11::4>>)  #  true
IO.puts is_binary(<<11::4>>)  #  true

# pattern matching

<<1, 2, x , y>> = <<1, 2 ,3, 4>> # x = 3y y = 4

#<<1, 2, x >> = <<1, 2 ,3, 4>> # Error
<<1, 2, x::binary>> = <<1, 2 ,3, 4, 5, 7>> #<<3, 4 ,5 6 ,7>>
IO.puts x

############################

<<a::size(2), b::size(2)>> <<11::4>>

<<head::binary-size(2),  middle, tail::binary>> =<<64, 65,66, 67, 68, 69>>

IO.puts head # "@A"
IO.puts middle # "66"
IO.puts tail # "CDE"

#############################
IO.inspect is_binary(<<219, 197, 19>>) # true
IO.inspect String.valid?(<<219, 197, 19>>) # false
IO.inspect String.valid?(<<127>>) # true
IO.inspect String.valid?(<<128>>) # false

###########################
<<head, rest::binary>> = "Microsoft"
IO.puts head  == ?M # true
IO.puts head # 77
IO.puts rest # "icrosoft"

<<head::binary_size(2), rest::binary>> == "über"
IO.puts head # "ü"
IO.puts rest # "ber"

# charlist del 0 al 127 con comillas simples
list = [65, 66]
IO.puts list

IO.inspect  'hola', charLists: :as_lists
