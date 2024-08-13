# declaring an atom
:apple


IO.puts(:apple == :apple)


# the boolean true and false are also boolean
IO.puts(:true == true)
IO.puts(:false == false)

IO.puts(is_boolean(:false))
IO.puts(is_atom(false))

# we can create atom with spaces
:"this is atom with spaces"

# convert an atom to charlist
IO.puts(Atom.to_charlist(:"An atom"))

# convert an atom to string
IO.puts(Atom.to_string(:"To string"))
