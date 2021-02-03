{:ok, pid} = Agent.start_link(fn -> %{} end)
Agent.update(pid, fn map -> MAp.put(map, :hello, "world") end)
Agent.get(pid, fn -> map -> Map.get(map, :hello) end)
