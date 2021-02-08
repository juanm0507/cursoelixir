# alias Geometry.Rectangle
# alias Geometry.Circle
# alias Geometry.shape

alias Geometry.{Rectangle,Circle, Shape}

print = fn shape ->
  IO.puts("")
  IO.puts("area(#{inspect shape}) = #{Shape.area(shape)}")
  IO.puts("perimeter(#{inspect shape}) = #{Shape.perimeter(shape)}")
end

rect = %Rectangle{b: 3, h: 4}
print.(rect)
# IO.puts Shape.area(rect)
# IO.puts Shape.perimetre(rect)

rect = %Rectangle{b: 4}
print.(rect)

# IO.puts Shape.area(rect)
# IO.puts Shape.perimetre(rect)

circle = %Circle{}
print.(circle)

# IO.puts Shape.circle(circle)
# IO.puts Shape.circle(circle)

any = "Hola"
print.(any)

# IO.puts Shape.circle(any)
# IO.puts Shape.circle(any)

#############
IO.puts rect.__struct__
# %{},__struct__ # throw errror

IO.inspect Map.keys(rect) # [:__struct__, :b, :h]
IO.inspect Map.values(rect) # [Geometry.Rectangle, 4, 1]

new_rect = %{rect | b: 1}
new_rect = %{rect | b: 3, h: 5}
