{:ok, balance} = Balance.create(1000)

Balance.deposit(balance, 100) |> IO.inspect()
Balance.withdraw(balance, 30) |> IO.inspect()
Balance.transfer(balance, 80) |> IO.inspect()
Balance.read(balance) |> IO.inspect()

IO.puts "---------------------"

{:ok, balance} = GsBalance.create(1000)
GsBalance.deposit(balance, 100) |> IO.inspect()
GsBalance.withdraw(balance, 30) |> IO.inspect()
GsBalance.transfer(balance, 80) |> IO.inspect()
GsBalance.read(balance) |> IO.inspect()
