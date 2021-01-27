result = unless true do
  "this returns a value"
end

IO.puts result

# result = con do
# true -> nil
# my condition -> "this returns a value"
# end

result = unless false do
  "this returns a value"
  #else
    # nil
end

IO.puts result # this resturns value

#evaluateUnless = fn x ->
#  unless x do
#    "Truhty"
#  else
#    "falsy"
#  end
#end

evaluateUnless = fn x ->
  unless x, do: "Truhty", else: "falsy"
end

evaluateUnless.(false) # Truhty
evaluateUnless.(nil) # Truhty
# evaluateUnless.(another_value) # falsy  # for  more examples, watch cond examples

