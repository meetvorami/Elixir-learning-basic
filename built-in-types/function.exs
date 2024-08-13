add = fn a, b -> a + b end

IO.puts(add.(1, 2))

negate = fn
            false -> true
            true -> false
        end

IO.puts(negate.(true))


add = &(&1 + &2)
IO.puts(add.(13,8))