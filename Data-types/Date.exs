date = ~D[1999-08-13] # it store in year, month, day format
date_1 = ~D[2000-02-17]
IO.puts("printing year, month,day")
IO.puts(date.year)
IO.puts(date.month)
IO.puts(date.day)

# comparing two dates
IO.puts("")
IO.puts("comparing dates")
IO.puts(inspect(Enum.min([~D[1999-08-13],~D[2000-02-17]])))

# diff between two dates in days
IO.puts("")
IO.puts("difference between dates")
IO.puts(inspect(Date.diff(date_1,date)))

# add days in particular date
IO.puts("")
IO.puts("adding days to date")
IO.puts(Date.add(date,188))

# shifts -> to date based on year, month, weeks, days
IO.puts("")
IO.puts("adding shift to date")
IO.puts(Date.shift(date,year: 0, month: 6, week: 0,  day: 4))

# add date -> by number of days
IO.puts("")
IO.puts("adding dates")
IO.puts(Date.add(date,2))
IO.puts(Date.add(date,-20))
IO.puts(Date.add(date,188))

# after? -> strict compare two, if first date is after the second date it return true else return false
IO.puts("")
IO.puts("using of after?")
IO.puts(Date.after?(date_1,date))
IO.puts(Date.after?(date,date_1))

# before? -> strict compare two, if first date is before the second date it return true else return false
IO.puts("")
IO.puts("using of before?")
IO.puts(Date.before?(date,date_1))
IO.puts(Date.before?(date_1,date))

# beginning_of_month -> return first date of the given date
IO.puts("")
IO.puts("beginning_of_month")
IO.puts(Date.beginning_of_month(date))
IO.puts(Date.beginning_of_month(date_1))

# beginnig_of_week -> return the first day of the week , by default monday is consider as first day of the week but we can change it by pasing arrguments
IO.puts("")
IO.puts("beginning_of_week")
IO.puts(Date.beginning_of_week(date))
IO.puts(Date.beginning_of_week(date_1))

IO.puts(Date.beginning_of_week(date, :saturday))
IO.puts(Date.beginning_of_week(date_1, :sunday))

# compare -> compares the 2 date if the first date is later then second date it return :lt for vice versa, if both are equal then eq
IO.puts("")
IO.puts("compare")
IO.puts(Date.compare(date,date_1)) #lt
IO.puts(Date.compare(date_1,date)) # gt

IO.puts(Date.compare(date_1,date_1)) # eq

# convert -> converts the given date from its calander to the given calender
IO.puts("")
IO.puts("convert")
IO.puts(inspect((Date.convert(date_1,Calendar.ISO))))

#  convert! -> raise an argument if conversion is not possible
IO.puts("")
IO.puts("convert!")
IO.puts(inspect((Date.convert!(date_1,Calendar.ISO))))

# day of era -> day of era of a given date
IO.puts("")
IO.puts("day of era")
IO.puts(inspect(Date.day_of_era(date)))
IO.puts(inspect(Date.day_of_era(date_1)))

# day of week
IO.puts("")
IO.puts("day of week")
IO.puts(Date.day_of_week(date))
IO.puts(Date.day_of_week(date_1))

# day in month
IO.puts("")
IO.puts("day of month")
IO.puts(Date.days_in_month(date))
IO.puts(Date.days_in_month(date_1))

# day of the year
IO.puts("")
IO.puts("total number of day for given date")
IO.puts(Date.day_of_year(date))
IO.puts(Date.day_of_year(date_1))


# date end of the month -> returns last date of the month
IO.puts("")
IO.puts("date end of the month")
IO.puts(Date.end_of_month(date))
IO.puts(Date.end_of_month(date_1))

# date end of the week
IO.puts("")
IO.puts("date end of the week")
IO.puts(Date.end_of_week(date))
IO.puts(Date.end_of_week(date_1))

# leap_year? => return whether it is a leap year or not
IO.puts("")
IO.puts("leap_year?")
IO.puts(Date.leap_year?(date))
IO.puts(Date.leap_year?(date_1))

# quarter of the year
IO.puts("")
IO.puts("quarter of the year")
IO.puts(Date.quarter_of_year(date))
IO.puts(Date.quarter_of_year(date_1))

# gergoriean day
IO.puts("")
IO.puts("converts a date to a gergoriean")
IO.puts(Date.to_gregorian_days(date))
IO.puts(Date.to_gregorian_days(date_1))

# to return current date
IO.puts("")
IO.puts("current date")
IO.puts(Date.utc_today())

# year of era
IO.puts("")
IO.puts("year of area")
IO.puts(inspect(Date.year_of_era(date)))
IO.puts(inspect(Date.year_of_era(date_1)))
