defmodule CustomError do
  defexception [:message, country: "Colombia"]
end

defmodule DefaulError do
  defexception [message: "Message for default"]
end

# iex.bat> raise CustomError
# iex.bat> raise DefaulError
# iex.bat> raise DefaulError, message: "Sin mesaje por defecto"
