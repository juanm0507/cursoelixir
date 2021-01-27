#result = cond do
# true  ->  "this returns a value"
# end

result = if true do
  "this returns a value"
end

IO.puts result

# result = con do
# my condition -> "this returns a value"
# true -> nil
# end

result = if false do
  "this returns a value"
  #else
    # nil
end

IO.puts result # this resturns value

#evaluateIf = fn x ->
#  if x do
#    "Truhty"
#  else
#    "falsy"
#  end
#end

evaluateIf = fn x ->
  if x, do: "Truhty", else: "falsy"
end

evaluateIf.(false) #  falsy
evaluateIf.(nil) # falsy
# evaluate.(another_value) # Truhty  # for  more examples, watch cond examples

