defmodule MyServer do
    def server do
      receive do
        {:ping, source_alias} ->
          send(source_alias, :pong)
          server()
      end
    end
  end
  
  # Spawn the server process
  server = spawn(&MyServer.server/0)
  
  # Get the current process alias (or use `self()` if `Process.alias()` is not defined)
  source_alias = self()
  
  # Send a ping message to the server
  send(server, {:ping, source_alias})
  
  # Wait to receive a pong message
  receive do
    :pong -> IO.puts(":pong") # or just `:pong` if you don't want to print
  end