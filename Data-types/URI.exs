# append_path
IO.puts(" append_path")
IO.puts(URI.append_path(URI.parse("https://www.google.com"),"/demo/url"))

parsed_url = URI.parse("https://www.example.com")

# append_query
IO.puts("\n append_query")
IO.puts(URI.append_query(parsed_url,"x=1"))


# decode
IO.puts("\n decode")
IO.puts(URI.decode("https%3A%2F%2Fwww.example.com"))


# decode query
IO.puts("\n decode query")
IO.puts(inspect(URI.decode_query("foo=bar&one=1")))


# default port
IO.puts("\n default port")
IO.puts(URI.default_port("ftp"))
IO.puts(URI.default_port("https"))

query = %{"foo" => 1, "bar" => 2}
# encode query
IO.puts("\n encode query")
IO.puts(URI.encode_query(query))
