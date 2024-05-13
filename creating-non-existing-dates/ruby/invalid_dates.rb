require 'date'

# Date.new with valid input
date = Date.new(2021, 1, 15)

puts date # prints 2021-01-15

# Date.new with invalid input
begin
  Date.new(2021, 2, 30)
rescue => e
  puts e # prints invalid date
end
