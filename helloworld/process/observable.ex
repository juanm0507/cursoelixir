defmodule Obs do
  @spec create(integer()) :: pid()

  def create(initialState \\ 0) do
    spawn(__MODULE__, : listen, [[], initialState])

  end

  defp  listen(observers, state) do
    receive do
     {:attach, observer_pid} ->
     # new_observers = add_observer(observers, observer_pid)
     # Listen(new_observers, state)
     observers |> add_observer(observer_pid) |> listen(state)

     {:detach, observer_pid} ->
      # new_observers = remove_observer(observers, observer_pid)
      # Listen(new_observers, state)
      observers |> remove_observer(observer_pid) |> listen(state)

      {:increment} ->
        state = state + 1
        notify(observers, state)
        listen(observers, state)

      {:decrement} ->
        state = state - 1
        notify(observers, state)
        listen(observers, state)

      {:read, reader_pid} ->
        send(reader_pid, state)
        listen(observers, state)
    end
  end

  def add_observer(observers, observer_id), do:[observer_pid | observers]
  def remove_observer(observers, observer_id), do: observers -- [observer_pid]

  def notify(observer, state) do
    # Enum.each(observers, fn(obs_id) -> send(obs_pid, state) end)
    # observers |> Enum.each(fn(obs_id) -> send(obs_pid, state) end)
    observers |>Enum.each(&send(&1, state))
  end

   def attach(subject), do: send (suject, {:attach, self()})
   def detach(subject), do: send (suject, {:detach, self()})
   def increment(subject) do: send (suject, {:increment})
   def decrement(subject) do: send (suject, {:decrement})

   def read(subject) do
    send(subject, {:read, self()})
    await()
   end

   def await(millis \\ 1000) do
    receive do
      count -> count
    after
      millis -> :timeout
    end
   end
# suject = %Observable{pid: subject_pid}
# subject.attach(pid)
# subject.attach()
# subject.detach(pid)
# subject.detach()
