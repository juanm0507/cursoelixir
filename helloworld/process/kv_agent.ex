defmodule KV do
 @moduledoc """
   Provides a key_value (KV) process to access  a shared state  map

   ## Examples
      KV.read(kv, :hello) # nil
      {:ok, #PID<0.101.0>}
      iex>KV.read(kv, :hello) # nil
      nil
      iex>KV.update(kv, :hello, "world")
      :ok
      iex>KV.read(kv, :hello)
      "world"
 """
 @vsn 1
 @initial_state %{hello: "Mundo"}

 @doc """
     Creates  a pid  to read and create/update a key_value pair

     ## Example
        {:ok, kv} = KV.start_link()
        {:ok, #PID<0.101.0>}

 """
  def start_link do
    #Agent.start_link(fn -> %{} end)
    Agent.start_link(fn -> @initial_state end)
  end

  @doc """
   Read a value for a key. if the key does not exists, return null

   ## Example
      iex>KV.read(kv, :hello)
      nil
  """

 #read = request + await
  def read(kv_pid, key) do
    Agent.get(kv_pid, fn map -> Map.get(map, key) end)
  end

  @doc """
    updates or creates (if necessary ) a value for a key
  ## Example
     iex>KV.update(kv, :hello, "world")
     "world"
  """

  def update(kv_pid, key, value) do
    Agent.update(kv_pid, fn map -> Map.put(map, key, value) end)
  end
end

# IN a loop language
# kv = KV()

{:ok, kv} = KV.start_link()


# value = kv.read(:hello)
# print (value)

value = KV.read(kv, :hello) # nil
IO.inspect value

# KV update {:hello, "world"}
KV.update(kv, :hello, "world")

# value = kv.read(:hello)
# print (value)

value = KV.read(kv, :hello)
IO.inspect value

####
{:ok, agent} = Agent.start_link fn -> 123 end
IO.puts Agent.get_and_update(agent, fn state -> {state - 5, state + 1}) # 118
IO.puts Agent.get(agent, fn x -> x end)# 124
