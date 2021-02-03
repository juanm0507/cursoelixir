await1 = fn ->
  receive do
    {:hello, msg} -> msg
    {:bye, msg} -> msg <> " " <> msg
    {:pid, pid} -> pid
  end
end

await2 = fn ->
  receive do
    {:hello, msg} -> msg
    {:bye, msg} -> msg <> " " <> msg
    {:pid, pid} -> pid
    _ -> {:error, "there wasn' t a match"}
  end
end

await3 = fn millis->
  receive do
    {:hello, msg} -> msg
    {:bye, msg} -> msg <> " " <> msg
    {:pid, pid} -> pid
  after
    millis -> "Timeout after#{millis} millisecons"
  end
end

test = fn await ->
  send self(), {:hello, "world"}
  IO.puts await.() # "world"

  send self(), {:bye, "bye"}
  IO.puts await.() # "bye bye"

  send self(), {:hi, "?"}
  IO.inspect await.() # will
end

# test.(await1) # TODO: uncomment this line
# "world"
# "bye bye"
# --------freezed

test.(await2) # TODO: uncomment this line
# "world"
# "bye bye"
# --------freezed

test.(fn -> await3.(1000) end) # TODO: uncomment this line
# "world"
# "bye bye"
# --------freezed

IO.puts "================="
spawn  fn -> send self(), {:hello, "world"} end
IO.puts await3.(1000) # timeout

IO.puts "------------------------"
self_pid = self()
pid = spawn fn ->
  spid = self()
  send self_pid, {:pid, spid}
end

second_pid = await3.(1000) #proces id of  the spwan
IO.puts pid === second_pid
