# List

# Linked list holds 0,1 or more elements in it.
# list in elixir are defined between a square bracket

my_list = [1,"two",3,:four]

IO.puts(inspect(my_list))


#  We can add two list or subtract two list using ++ or --

add_list = [1,2,4,5] ++ [6,7,8,9]
IO.puts(inspect(add_list))

subtract_list = [1,2,3,4,5,6,7] -- [5,6,7,8,9]
IO.puts(inspect(subtract_list))


# to add element at the staring of list

new_element = 0
list  = [1,2,3,4,5]

IO.puts(inspect([new_element|list]))


# as list are linked list
[head|tail] = [1,2,3,4,5]

IO.puts(inspect(head)) # 1
IO.puts(inspect(tail)) # 2,3,4,5


# delete an element from the list
IO.puts(inspect(List.delete([1,2,3,4],1)))

# delete at particular index
IO.puts(inspect(List.delete_at([1,2,3,4],0)))

IO.puts(inspect(List.delete_at([1,2,3,4],1)))

IO.puts(inspect(List.delete_at([1,2,3,4],9)))

IO.puts(inspect(List.delete_at([1,2,3,4],-1)))

# duplicate -> duplicate the element n time in a list

IO.puts(inspect(List.duplicate("hello",2))) #["hello","hello"]
IO.puts(inspect(List.duplicate([1,2],2))) #[[1,2],[1,2]]

# first method in list 

IO.puts(inspect(List.first([])))
IO.puts(inspect(List.first([],1)))
IO.puts(inspect(List.first([1,2,3])))


# flatten -> Flattens the given list of nested lists.
IO.puts(inspect(List.flatten([1,[[2],3]])))


# flatten(list, tail)
# Flatten the given list of nested list, The list tail will be added at the end of the flattened list
# Empty list elements are discarded, but not the once from the tail.

IO.puts(inspect(List.flatten([[1,[[2],3]],[4,5]])))

IO.puts(inspect(List.flatten([1,[],2],[4,5]))) # [1, 2, 4, 5]

IO.puts(inspect(List.flatten([1,2],[4,[],5]))) #[1, 2, 4, [], 5]

# foldl

# fold the given list from the left with a function. Requries an accumulator which can be any value

IO.puts(inspect(List.foldl([5,5], 10 , fn x, acc -> x + acc end)))




IO.puts(inspect(List.foldl([1,2,3,4], 0, fn x, acc -> x + acc end)))

IO.puts(inspect(List.foldl([1,2,3,4], 0, fn x, acc -> x - acc end)))

# key sort
# keysort(list, position, sorter \\ :asc)
#  for new version elixir
# IO.puts(inspect(List.keysort([a: 5, b: 1, c: 3], 1)))

# IO.puts(inspect(List.keysort([a: 5, b: 1, c: 3],0)))

# IO.puts(inspect(List.keysort([a: 5, b: 1, c: 3], 0, :desc)))

# users = [
#     {"Ellis", ~D[1943-05-11]},
#     {"Lovelace", ~D[1815-12-10]},
#     {"Turing", ~D[1912-06-23]}
#   ]

# Io.puts(inspect(List.keysort(users, 1, Date)))


# last - To find the last element of the list 
IO.puts(inspect(List.last([]))) # nil

IO.puts(inspect(List.last([], 1))) # 1

IO.puts(inspect(List.last([1,2,3]))) # 1

# List replace at 

IO.puts(inspect(List.replace_at([1,2,3],0,0)))


# starts_with?
IO.puts(inspect(List.starts_with?([1,2,3],[1])))

IO.puts(inspect(List.starts_with?([1,2,3],[4])))
