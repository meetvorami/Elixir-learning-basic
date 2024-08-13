# ceil function in 
# convert 12.52 to 12.51 as it will be store as 12.5199999999 in memory so
IO.puts(Float.ceil(-12.52,2))

# if no precession given then it converts to integer
# it will convert to the next integer for suppose 
# 12.52 will be converted to 13
IO.puts(Float.ceil(12.52))

IO.puts(Float.ceil(-12.52))



# floor - rounds the largest float lesser than or equal to number
# the below both will be converted to 12
IO.puts(Float.floor(12.52))
IO.puts(Float.floor(12.89))

# max finite return maximum finite for the float
# IO.puts(Float.max_finite())

# min finite return minimum finite for the fload
# IO.puts(Float.min_finite())

# converting string to float using parse
    # here it will return a tuple containg the float value and other remaning thing from the string
# we can also use string.to_float
IO.puts(inspect(12.52))

IO.puts(inspect(Float.parse("12.52meet")))

# pow -> number to the power
# postivie
IO.puts(Float.pow(2.0,0))
IO.puts(Float.pow(2.0,1))
IO.puts(Float.pow(2.0,10))

# negative
IO.puts(Float.pow(2.0,-1))
IO.puts(Float.pow(2.0,-2))

# ratio return the value of tuple {numerator,denominator}
# here denominator will always be positive
IO.puts(inspect(Float.ratio(0.0)))
IO.puts(inspect(Float.ratio(3.14)))

# round - it rounds to next possible value

IO.puts(Float.round(12.55)) # 13

IO.puts(Float.round(12.55,2)) # 12.55

IO.puts(Float.round(12.567,2)) # 12.57

# convert float to charlist
IO.puts(Float.to_charlist(12.52))

# convert float to stringlist
IO.puts(Float.to_string(12.52))
