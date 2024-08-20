# given keyword
IO.puts(inspect([{:exit_on_close,true},{:active, :once}, {:packet_size, 1024}]))

IO.puts(inspect(["exit on close": true]))

keywords = [a: 1, b: 2 , c: 3, d: 4, e: 5, a: 1, b: 2 , c: 3, ]
keywords_1 = [g: 3, b: 2, h: 1]
# delete(keywords, key) => delete the key present if the keywords if multiple than also removes all
IO.puts("\n delete()")
IO.puts(inspect(Keyword.delete(keywords,:a)))

# delete_first(keywords, key) => delete_first occurence of the key
IO.puts("\n delete first")
IO.puts(inspect(Keyword.delete_first(keywords,:a)))

# drop(keyword, keys) => remove duplicate key from the keywords
IO.puts("\n Drop")
IO.puts(inspect(Keyword.drop(keywords,[:a,:z])))


# equals? compare both the keywords if both keys and values are same in both keywords it return true
IO.puts("\n equals?")
IO.puts(Keyword.equal?(keywords,keywords_1))
IO.puts(Keyword.equal?(keywords,keywords))


# fetch(keyword, key) => if the given key is not present return error else return value of that key
IO.puts("\n fetch  ")
IO.puts(inspect(Keyword.fetch(keywords, :a)))
IO.puts(Keyword.fetch(keywords, :z))

# fetch! => return value if present else raise error for that key
IO.puts("\n fetch!")
IO.puts(inspect(Keyword.fetch!(keywords,:a)))
# IO.puts(inspect(Keyword.fetch!(keywords,:z))) it will raise.

# filter(keywords, fn ) => filter the data based on function
IO.puts("\n filter")
IO.puts(inspect(Keyword.filter(keywords, fn {_key, value} -> rem(value,2) == 0 end)))

# from_keys([keys],value) => return key, value pair for the key,value
IO.puts("\n from_keys")
IO.puts(inspect(Keyword.from_keys([:a, :b, :c ], :demo)))

# get(keyword, key, default) => get value for the given key if not present return default
# if there are duplicate in the keywords it return the first element
IO.puts("\n get")
IO.puts(inspect(Keyword.get(keywords,:a,10)))
IO.puts(inspect(Keyword.get(keywords,:z,10)))

# get_and_update(keyword,key,fun)
IO.puts("\n get and update")
IO.puts(inspect(Keyword.get_and_update(keywords,:a, fn current_value -> {20*current_value , 100+current_value} end)))


# get_values(keyword,key) => return all the value for the given key
IO.puts("\n get_values")
IO.puts(inspect(Keyword.get_values(keywords,:a)))
IO.puts(inspect(Keyword.get_values(keywords,:z)))

# has_key?(keyword,key) => return true if the key is present or return false
IO.puts("\n has_key?")
IO.puts(Keyword.has_key?(keywords,:a))
IO.puts(Keyword.has_key?(keywords,:z))

# intersect(keyword1,keyword2) => it return list with common keys and return the value of the second keyword, we can also pass func and manipulate the response
IO.puts("\n intersect")
IO.puts(inspect(Keyword.intersect(keywords,keywords_1)))
IO.puts(inspect(Keyword.intersect(keywords,keywords_1,fn _k ,v1,v2 -> v1 + 100 - v2 end)))

# keys(keyword) => return all the key present in the keyword
IO.puts("\n keys")
IO.puts(inspect(Keyword.keys(keywords)))


# merge(key1,key2) => if key1 in both then the value will be of key2
IO.puts("\n merge")
IO.puts(inspect(Keyword.merge(keywords,keywords_1)))
IO.puts(inspect(Keyword.merge(keywords,keywords_1,fn _k, v1,v2 -> v1 end)))
IO.puts(inspect(Keyword.merge(keywords,keywords_1,fn _k, v1,v2 -> v2 end)))
IO.puts(inspect(Keyword.merge(keywords,keywords_1,fn _k, v1,v2 -> v1+v2 end)))
IO.puts(inspect(Keyword.merge(keywords,keywords_1,fn _k, v1,v2 -> 1317 end)))

# pop => return the value, remaninig elment in the keywords if default arg provided return default value if key is not present
IO.puts("\n pop")
IO.puts(inspect(Keyword.pop(keywords,:a)))
IO.puts(inspect(Keyword.pop(keywords,:z)))
IO.puts(inspect(Keyword.pop(keywords,:z,1)))

# put -> add element to keyword if the key is already present then it override its to avoid duplicates
IO.puts("\n put")
IO.puts(inspect(Keyword.put(keywords,:a,13)))

# split(keyword,keys) -> split the keyword stores the given split key in a different keyword
IO.puts("\n split")
IO.puts(inspect(Keyword.split(keywords,[:a,:c,:e])))


# split_with(keyword,fn) -> create a new keyword based on function
IO.puts("\n split_with")
IO.puts(inspect(Keyword.split_with(keywords,fn {_x, y} ->   rem(y,2) == 0 end)))


# take => takes all the key given in keyword in if duplicate then also it collect it
IO.puts("\n take")
IO.puts(inspect(Keyword.take(keywords,[:a,:b,:c])))


# values() -> return all the value of the keyword
IO.puts("\n values")
IO.puts(inspect(Keyword.values(keywords)))
