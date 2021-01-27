
factorial = fn x ->
  if x == 0 do
    "Value 0"
  else
    x * factorial (x-1)
  end
end


#factorial = fn x ->
#  if x, do:  "Value 0", else: x * factorial (x-1)
#end

factorial.(5)

