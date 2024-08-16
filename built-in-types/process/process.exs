alias = Process.alias()

IO.puts(inspect(alias))


alias = Process.alias([:reply])

IO.puts(inspect(alias))


Process.put(:comments, ["comment", "other comment"])

Process.delete(:comments)
# Process.delete(:comments)


pid = spawn(fn -> 1+2 end)

ref = Process.monitor(pid)
IO.puts("11111111111111111111")
IO.puts(inspect((ref)))

Process.demonitor(ref)

IO.puts("just after process demonitor")

pid = spawn(fn -> 1+2 end)

Process.monitor(pid)

Process.exit(pid,:kill)


receive do
  msg -> msg
    # code
end


pid = spawn(fn ->
                  receive do
                        {:ping, source_alias} -> send(source_alias,:pong)
                  end

            end)

ref_and_alias = Process.monitor(pid,alias: :reply_demonitor)



send(pid,{:ping,ref_and_alias})

receive do
  msg -> msg
    # code
end

receive do
  msg -> msg
    # code
end
