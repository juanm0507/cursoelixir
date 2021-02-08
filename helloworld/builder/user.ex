defmodule User do
  defstruct [:name , :lastname, :country, languages,languages: []]

  def create_user(), do:%user{}

  def set_name(user, name, lastname) do
    uer |> Map.put(:name, name) |> MAp.put(:lastname, :lastname)
  end

  def set_country(user, country), do: Map:put(user, :country, country)
  def set_languages(user, languages), do: Map.put(user, :languages, languages)
end
