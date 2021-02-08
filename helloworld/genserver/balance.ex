defmodule Balance do
  def create(initial_state \\ 0) do
    cond do
      initial_state < 0 -> {:error, "Amount  can 't negative"}
      # true -> {:ok, spawn(__MODULE__, :listen, [initial_state])}
      # true -> {:ok, spawn(Balance, :listen, [initial_state])}
      true -> {:ok, spawn_link(fn -> listen(initial_state) end)}
    end
  end

  def listen(state) do
    receive do
      {:call, from_id, {cmd, amount}} ->
        {cmd, amount} |> handle_call(from_id, state) |> listen()
        {:cast, {cmd, amount}} ->
          {cmd, amount} |> handle_cast(state) |> listen()
    end
  end

  def reply(from_id, reply, new_state) do
    send(from_id, reply)
    new_state
  end

  def no_reply(new_state), do: new_state

  def call(balance_pid, event) do
    send(balance_pid, {:call, self(), event})
    receive do
      amount -> amount
    end
  end


  def cast(balance_id, event) do
    send(balance_id, {:cast, event})
    :ok
  end

  def read(balance), do: call(balance, {:deposit, 0})
  def deposit(balance, amount), do:  call(balance, {:deposit, amount})
  def withdraw(balance, amount), do: call(balance, {:withdraw, amount})
  def transfer(balance, amount), do: cast(balance, {:transfer, amount})


  def handle_call({:deposit, amount}, from_id, state) do
    state = state + amount
    reply(from_id, state, state)
  end

  def handle_call({:withdraw, amount}, from_id, state) do
    state = state - amount
    reply(from_id, state, state)
  end

  def handle_cast({:transfer, amount}, state) do
   no_reply(state + amount)
  end
end
