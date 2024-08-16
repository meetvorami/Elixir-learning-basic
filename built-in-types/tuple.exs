# tuple can hold multiple data type under it.

IO.puts(inspect(({})))

IO.puts(inspect({1,:two,"three"}))


tuple = {:ok,:example}
IO.puts(inspect(tuple))

result = Tuple.insert_at(tuple,2,122)
IO.puts("line 12")
IO.puts(inspect(result))

{:ok,atom} = tuple
result = {:ok,atom, %{}}
IO.puts("line 17:")
IO.puts(inspect(result))

# tuple -> append the new element at the end.
tuple = {:foo,:bar,:baz}

IO.puts(inspect(Tuple.append(tuple,:meet)))

IO.puts(inspect(Tuple.delete_at(tuple,0)))

# duplicate -> duplicate a given value in a tuple
IO.puts(inspect(Tuple.duplicate("Meet",3)))
IO.puts(inspect(Tuple.duplicate(13,3)))
IO.puts(inspect(Tuple.duplicate(:demo,3)))

# insert_at to insert element at particular position
IO.puts(inspect(Tuple.insert_at(tuple,0,"meet")))
# IO.puts(inspect(Tuple.insert_at(tuple,-1,"meet"))) # error as it's a negative value

# product -> product of given element
IO.puts(Tuple.product({255,255}))

IO.puts(Tuple.product({255,0.1}))

IO.puts(Tuple.product({255,255,0.1}))

IO.puts(Tuple.product({})) # return 1 for an empty tuple

# sum -> sum of given element
IO.puts(inspect(Tuple.sum({100,100})))

IO.puts(inspect(Tuple.sum({13,17})))

IO.puts(inspect(Tuple.sum({}))) # return 0

# tuple to list
IO.puts(inspect(Tuple.to_list(tuple)))
