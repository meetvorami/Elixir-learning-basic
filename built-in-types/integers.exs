require Integer

# check if a integer is even 
IO.puts(Integer.is_even(10))
IO.puts(Integer.is_even(11))

# check if a integer is odd
IO.puts(Integer.is_odd(10))
IO.puts(Integer.is_odd(11))

# digit 

IO.puts(inspect(Integer.digits(10)))

# extended gcd
IO.puts(inspect(Integer.extended_gcd(240,46)))

# floor_div: Performs a floored integer division.

IO.puts(Integer.floor_div(10,8))

# get the gcd of two number
IO.puts(Integer.gcd(10,5))

# mod computes the modulo reminder of an integer
IO.puts(Integer.mod(5,2))


# convert string to int
# if base is not provided by default it is 10

IO.puts(inspect(Integer.parse("52")))
IO.puts(inspect(Integer.parse("52.5")))

IO.puts(inspect(Integer.parse("f4",16)))


# to pow 
IO.puts(Integer.pow(5,2))
IO.puts(Integer.pow(2,64))

# to convert integer to charlist
IO.puts(Integer.to_charlist(10))

# convert an Integer to string
IO.puts(Integer.to_string(10))

# undigits => Returns the integer represented by the ordered digits
IO.puts(Integer.undigits([1,2,3]))
IO.puts(Integer.undigits([1,4],16))