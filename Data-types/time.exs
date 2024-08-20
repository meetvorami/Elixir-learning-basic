time = ~T[10:07:40.0034]
time_1 = ~T[11:07:40]
# basic
IO.puts(" basic")
IO.puts(time.hour)
IO.puts(time.minute)
IO.puts(time.second)


# add(time,amount,unit) => default unit will be second and options available will second,minutes,hour,millisecond
IO.puts("\n add")
IO.puts(Time.add(time,2000))
IO.puts(Time.add(time,2000,:millisecond))
IO.puts(Time.add(time,25,:hour))

# after?(time1,time2) => strict check if time1 is after time2 or not
IO.puts("\n after?")
IO.puts(Time.after?(time,time_1))
IO.puts(Time.after?(time_1,time))

# before?(time1,time2) => strict check if time1 is before time2 or not
IO.puts("\n before?")
IO.puts(Time.before?(time,time_1))
IO.puts(Time.before?(time_1,time))

# compare(time1,time2) => return :gt if time1 is greater than time2, :lt if vice versa and :eq if both are same
IO.puts("\n compare")
IO.puts(Time.compare(time,time_1)) #lt
IO.puts(Time.compare(time_1,time)) # gt
IO.puts(Time.compare(time,time)) #eq

# diff(time1,time2,unit) => return diff of two time default unit is second
IO.puts("\n diff")
IO.puts(Time.diff(time_1,time))
IO.puts(Time.diff(time_1,time, :hour))
IO.puts(Time.diff(time_1,time, :minute))
IO.puts(Time.diff(time_1,time, :microsecond))

# shift(time,duration) => shift the time duration for the given duration
# Available duration units are: :hour, :minute, :second, :microsecond.
IO.puts("\n shift")
IO.puts(Time.shift(time, minute: 20))
IO.puts(Time.shift(time, hour: 2))
IO.puts(Time.shift(time, second: 200))

# to_string(time) => convert time to string
IO.puts("\n to_string")
IO.puts(Time.to_string(time))
IO.puts(Time.to_string(time_1))

# utc_now() => gives current time
IO.puts("\n utc_now()")
IO.puts(Time.utc_now())
