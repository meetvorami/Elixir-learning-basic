name = "Meet"
IO.puts("Hello, #{name}")

# at(string,index) => return the character present a particular position
IO.puts(String.at(name,0))

# bag distance => return the difference between two string
IO.puts("\n bag distance")
IO.puts(String.bag_distance(name,name))
IO.puts(String.bag_distance(name,"dm"))
IO.puts(String.bag_distance(name,"me"))
IO.puts(String.bag_distance(name,"mee"))

# slice(string,start,stop)
IO.puts("\n slice")
IO.puts(String.slice(name,2,2))


# captialize(string) => Same as python
IO.puts("\n capitalize")
IO.puts(String.capitalize("meet"))
IO.puts(String.capitalize("MEet"))
IO.puts(String.capitalize("MEET"))


# codepoint => return list of codepoint encode in a string
IO.puts("\n code points ")
IO.puts(String.codepoints(name))

# contains?(string, list of value/single value)
IO.puts("\n contains")
IO.puts(String.contains?(name,"Me"))
IO.puts(String.contains?(name,["ee","Me","et"]))


# downcase(string,mode) => convert to lower case default mode is default
# mode may be :default, :ascii, :greek or :turkic
IO.puts("\n down case")
IO.puts(String.downcase(name))


# Duplicate(string,time) => return string * value in python
IO.puts("\n duplicate")
IO.puts(String.duplicate(name,3))

# ends_with?(string, suffix) => check ends with of python and here suffix can be single string or list of string
IO.puts("\n ends_with?")
IO.puts(String.ends_with?(name,"et"))
IO.puts(String.ends_with?(name,["Me","et"]))



# first => return first char of the string
IO.puts("\n first")
IO.puts(String.first(name))


# last => return the last char of the string
IO.puts("\n last")
IO.puts(String.last(name))

# length => return the length of the string
IO.puts("\n length")
IO.puts(String.length(name))

# pad_leading => return the new string with adding padding start of string
IO.puts("\n pad_leading")
IO.puts(String.pad_leading(name,6))
IO.puts(String.pad_leading(name,6,"12"))


# pad_trailing => return new string by adding padding at the end of the string
IO.puts("\n pad trilling")
IO.puts(String.pad_trailing(name,10))
IO.puts(String.pad_trailing(name,10,"1"))

# replace
IO.puts("\n replace")
IO.puts(String.replace("A,b,c",",","-"))
IO.puts(String.replace(name,"","."))

# reverse
IO.puts("\n reverse")
IO.puts(String.reverse(name))

# slice(string,range)
IO.puts("\n Slice")
IO.puts(String.slice(name,1..2))
IO.puts(String.slice(name,2..2))


# split
IO.puts("\n split")
IO.puts(String.split(name))
IO.puts(String.split(name,""))
IO.puts(String.split("a,b,c", ","))
IO.puts(String.split("a,b,c", ",", parts: 2))

# split_at => split string at particular index
IO.puts("\n split_at")
IO.puts(inspect(String.split_at(name,2)))
IO.puts(inspect(String.split_at(name,1)))

# trim => remove whitespace from starting and ending
IO.puts("\n trim")
IO.puts(String.trim("\n #{name} \n"))

# Remove trailing space only
IO.puts("\ntrim_trailing")
IO.puts(String.trim_trailing("\n #{name} \n"))

IO.puts("\ntrim_leading")
IO.puts(String.trim_leading("\n #{name} \n"))
