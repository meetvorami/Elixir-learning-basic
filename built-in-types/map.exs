#Map
#   Maps are the "go to" key-value data structure in Elixir.

# %{}

# different ways to define

IO.puts(inspect(%{"one"=> :two, 3 => "four"}))

IO.puts(inspect(%{one: "two", three: "four"}))

# to fetch key from Map

map = %{a: 1, b: 2, c: 3, d: 4}

IO.puts(inspect(Map.fetch(map, :a)))

IO.puts(inspect(Map.fetch(map, :b)))

IO.puts(inspect(Map.fetch(map, :c)))


# access the keu

IO.puts(map.a)


# remove a key from a map
IO.puts(inspect(Map.delete(map,:a))) 

# drop - remove multiple keys at once
IO.puts(inspect(Map.drop(map,[:b, :c])))

# equal 
IO.puts(inspect(Map.equal?(map,%{d: 4, b: 2, c: 3, a: 1}))) # True


IO.puts(inspect(Map.filter(map,fn {_key, value} -> rem(value,2) == 1 end)))

# from_keys(key,value) -> from a map from a given key,value

# IO.puts(inspect(Map.from_keys([1, 2, 3], :number)))    

# from struct
# defmodule User do
#     defstruct [:name]
#   end
  
# IO.puts(inspect(Map.from_struct(%User{})))
# # Output: %{name: nil}

# IO.puts(inspect(Map.from_struct(%User{name: "john"})))
# # Output: %{name: "john"}

# get method

IO.puts(Map.get(map,:a))

# for suppose key is not present and need to provide default value then
IO.puts(Map.get(map, :e ,4 ))

# pop
IO.puts(inspect(Map.pop(map, :a)))

IO.puts(inspect(Map.pop(map, :e)))

# put -> if the key is present then it will replace the value
IO.puts(inspect(Map.put(map,:a , 13)))

# put_new -> if key is not present then only it will replace
IO.puts(inspect(Map.put_new(map, :a , 13)))

IO.puts(inspect(Map.put_new(map, :e, 08)))

# split
IO.puts(inspect(Map.split(map,[:a, :c, :e])))

# split_with(map,fun)
# IO.puts(inspect(Map.split_with(%{a: 1, b: 2, c: 3, d: 4}, fn {_k, v} -> rem(v, 2) == 0 end)))

IO.puts(inspect(Map.update(map,:a , 13, fn exisiting_value -> exisiting_value + 12 end)))

IO.puts(inspect(Map.update(map,:e , 13, fn exisiting_value -> exisiting_value + 12 end)))

IO.puts(inspect(Map.values(map)))