## similar to  spawn but linked with its parent
pid = spawn_link fn -> 1 + 2 end
IO.inspect pid

pid1 = spawn fn -> raise "Opps!  there ' s  an error" end
#pid2 = spwan fn -> raise "Opps!  there ' s  an error" end

IO.inspect pid1
#IO.inspect pid2

## task

{:ok, pid} = Task.start fn -> 1 + 2 end
IO.inspect pid #PID <0.101.0>
#TODO: raise an error inside the Task.start
# task.start fn -> raise "Opp!" end

#based spawn_link
{:ok, pid} = Task.start_link fn -> 1 + 2 end
IO.inspect pid #PID <0.101.0>
#TODO: raise an error inside the Task.start
# task.start_link fn -> raise "Opp!" end
