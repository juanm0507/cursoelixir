import user

user =
  create_user()
  |> set_name("Juan", "Meza")
  |> set_country("Colombia")
  |> set_languages(["Spanish", "English",  "German"])

  inspect(user) |> IO.puts()
