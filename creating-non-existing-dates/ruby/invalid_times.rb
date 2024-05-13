require 'date'

# Time.utc with valid input
timestamp = Time.utc(2021, 1, 15, 8, 0, 0)

puts timestamp # prints "2021-01-15 08:00:00 UTC"

# Time.utc with invalid input
timestamp = Time.utc(2021, 2, 30, 8, 0, 0)

puts timestamp # prints "2021-03-02 08:00:00 UTC"
