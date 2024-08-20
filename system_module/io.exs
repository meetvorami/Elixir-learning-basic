defmodule EmailModule do

  def email(username, domain) do
    username <> "@" <> domain
  end

  def welcome_message(name, username, domain) do
    "Welcome #{name}, your email is: #{email(username, domain)}"
  end
end



IO.puts(EmailModule.welcome_message("Meet", "meet", "example.com"))


username = IO.gets("Please Enter your Username\n")
IO.puts("Username: #{username}")

# convert input to int
age = IO.gets("please enter your age \n")
{age, _ok} = Integer.parse(age)
IO.puts("your age is #{age}")

list = IO.gets("pass , seperate value for list:\n")

list = String.trim()

list = String.split(list,",")
list = Enum.map(list,fn x -> String.to_integer(x) end)
IO.puts(inspect(list))
