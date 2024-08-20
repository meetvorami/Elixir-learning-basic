naive = ~N[1999-08-13 10:40:42]
naive_1 = ~N[2000-02-17 10:40:42]

IO.puts(naive.year)
IO.puts(naive.second)


# comparing dates
IO.puts("\n comparing dates")
IO.puts(Enum.min([naive,naive_1],NaiveDateTime))

# adds -> by default argument is second if not provide you can provide :day, :hour, :minute, :second, :millisecond, :microsecond, :nanosecond
IO.puts("\n adds")
IO.puts(NaiveDateTime.add(naive,2))
IO.puts(NaiveDateTime.add(naive,2,:day))
IO.puts(NaiveDateTime.add(naive,2,:minute))
IO.puts(NaiveDateTime.add(naive,2,:hour))
IO.puts(NaiveDateTime.add(naive,2,:millisecond))


# after?(date1,date2) -> return true if first datetime is stricly later tahn the second one
IO.puts("\n after?")
IO.puts(NaiveDateTime.after?(naive,naive_1)) # false
IO.puts(NaiveDateTime.after?(naive_1,naive)) # true


# before?(date1,date2) -> opposite after
IO.puts("\n before?")
IO.puts(NaiveDateTime.before?(naive,naive_1)) # true
IO.puts(NaiveDateTime.before?(naive_1,naive)) # false

# beginning of the day
IO.puts("\n beggining of the day")
IO.puts(NaiveDateTime.beginning_of_day(naive))
IO.puts(NaiveDateTime.beginning_of_day(naive_1))


# compare(date1,date2) -> return :gt if first date is later than second date, :lt if vice versa and :eq if equal
IO.puts("\n compare")
IO.puts(NaiveDateTime.compare(naive,naive_1)) # :lt
IO.puts(NaiveDateTime.compare(naive_1,naive)) # :gt
IO.puts(NaiveDateTime.compare(naive,naive))  # : eq

# convert(date_time, calendar) -> convert given date to the given calander and return tuple if not comptaible return the error
# IO.puts("\n convert")
# IO.puts(inspect(NaiveDateTime.convert(naive,Calendar.Holocene))) not working


# diff(date1,date2) => return difference in second by default if additional argument provide it provide in
# :day, :hour, :minute, :second, :millisecond, :microsecond, :nanosecond,
IO.puts("\n diff")
IO.puts(NaiveDateTime.diff(naive_1,naive))
IO.puts(NaiveDateTime.diff(naive_1,naive,:hour))
IO.puts(NaiveDateTime.diff(naive_1,naive,:minute))
IO.puts(NaiveDateTime.diff(naive_1,naive,:day))
IO.puts(NaiveDateTime.diff(naive_1,naive,:microsecond))

# local_now() -> return local time
IO.puts("\n local now")
IO.puts(NaiveDateTime.local_now())
IO.puts(NaiveDateTime.local_now().year)

# shift(date, duration) => shift date to the given duration duration can be year, month,
# :year, :month, :week, :day, :hour, :minute, :second, :microsecond
IO.puts("\n shift")
IO.puts(NaiveDateTime.shift(naive, hour: 4))
IO.puts(NaiveDateTime.shift(naive, day: 4))
IO.puts(NaiveDateTime.shift(naive, month: 6))
IO.puts(NaiveDateTime.shift(naive, year: 1))

# to_date(date) => convert navie datetime to date
IO.puts("\n to_date")
IO.puts(NaiveDateTime.to_date(naive))
IO.puts(NaiveDateTime.to_date(naive_1))

# to_string(date) => convert naveie date to string
IO.puts("\n to_string")
IO.puts(NaiveDateTime.to_string(naive))
IO.puts(NaiveDateTime.to_string(naive_1))

# to_time(date) => remove the date part and store only the time parameter
IO.puts("\n to_time")
IO.puts(NaiveDateTime.to_time(naive))
IO.puts(NaiveDateTime.to_time(naive_1))

# utc_now() => provide current utc time
IO.puts("\n utc_now()")
IO.puts(NaiveDateTime.utc_now())
IO.puts(NaiveDateTime.utc_now(:second,Calendar.ISO))
