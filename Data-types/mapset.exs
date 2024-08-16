# Mapset -> store unique dataset for particular datatype without any order

# To create empty Mapset
IO.puts(inspect(MapSet.new()))

# Mapset can hold multiple datatype value in it.

IO.puts("\ncheck for different datatype")
IO.puts(inspect(MapSet.new([1,:nbue,{"nube"}])))

# to add element to Mapset
ms = MapSet.new([])

ms = MapSet.put(ms,4)



IO.puts("\nPut function")
IO.puts(inspect(ms))

# Match
IO.puts("\nmatch? ")
IO.puts(match?(%MapSet{},MapSet.new()))


map_set = MapSet.new([1,2,3,4,5])
map_set1 = MapSet.new([4,5,6,7,8])

# delete
IO.puts("\ndelete functionaltiy")
IO.puts(inspect(MapSet.delete(map_set,6)))
IO.puts(inspect(MapSet.delete(map_set,3)))

# difference
IO.puts("\nfind the difference")
IO.puts(inspect(MapSet.difference(map_set,map_set1)))

# disjoint? => mapset1 & mapset2 do not have a single same element
IO.puts("")
IO.puts("disjoint?")
IO.puts(inspect(MapSet.disjoint?(map_set,map_set1)))

# equal? -> the comparsion is done using === if all the element of first map_set are present in map_set1 then it will return true
IO.puts("")
IO.puts("equal?")
IO.puts(inspect(MapSet.equal?(map_set,map_set1)))

# filter(Mapset, fn) -> it take 2 argument mapset and function and return new mapset based on the operation
IO.puts("")
IO.puts("filter")
IO.puts(inspect(MapSet.filter(MapSet.new(1..20), fn x -> x > 3 end)))
IO.puts(inspect(MapSet.filter(map_set,fn x-> rem(x,2) == 0 end)))
IO.puts(inspect(MapSet.filter(map_set,fn x->  x>3  end)))


# intersection -> return common element present in first mapset
IO.puts("")
IO.puts("intersection")
IO.puts(inspect(MapSet.intersection(map_set,map_set1)))

# member? => check if the value is present in mapset
IO.puts("")
IO.puts("member?")
IO.puts(inspect(MapSet.member?(map_set,4)))
IO.puts(inspect(MapSet.member?(map_set,10)))


# new(enumerable)
IO.puts("")
IO.puts("enumerable")
IO.puts(inspect(MapSet.new([1,2,2,2,2,3,4,3,32,3,2,2,34,21,2,3,13,123])))

IO.puts(inspect(MapSet.new([1,1,2,32],fn x-> x*2 end)))

# put
IO.puts("")
IO.puts("put")
IO.puts(inspect(MapSet.put(map_set,10)))


# reject(mapset,fn) -> it will return a mapset of value that are rejected by fn
IO.puts("")
IO.puts("reject")
IO.puts(inspect(MapSet.reject(map_set,fn x -> rem(x,2) != 0 end)))
IO.puts(inspect(MapSet.reject(map_set,fn x -> rem(x,2) == 0 end)))


# size(map_set) => return the size of map_set
IO.puts("")
IO.puts("size")
IO.puts(inspect(MapSet.size(map_set)))


# split_with(map_set,fn) => return 2 mapset as per task performed in function

IO.puts("split_with")
{out1,out2} = MapSet.split_with(map_set,fn x -> x > 2 end )
IO.puts("out1: #{inspect(out1)} , out2:#{inspect(out2)}")
{out1,out2} = MapSet.split_with(map_set,fn x -> rem(x, 2) !=0  end )
IO.puts("out1: #{inspect(out1)} , out2:#{inspect(out2)}")


# subset?(mapset1,mapset2) => check if all element of mapset1 are present in Mapset2 then it return true
IO.puts("\nsubset?")
IO.puts(MapSet.subset?(map_set,map_set1))

# symentric_difference(mapset1,mapset2) => return common element present
IO.puts("\nsymmetric difference")
IO.puts(inspect(MapSet.symmetric_difference(map_set,map_set1)))


# Union
IO.puts("\nUnion")
IO.puts(inspect(MapSet.union(map_set,map_set1)))
