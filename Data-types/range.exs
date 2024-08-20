IO.puts(1 in 1..10)


# define the step by addin //
IO.puts("\n range ")
IO.puts(4 in 1..10//2)


# use of enum
range = 1..10

IO.puts(Enum.reduce(range,0,fn i,acc -> i*i+ acc end))

# disjoint? check whether both range are disjoint or not
IO.puts("\n disjoint?")
IO.puts(Range.disjoint?(1..5,6..10))
