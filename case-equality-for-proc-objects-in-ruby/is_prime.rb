def is_prime?(n)
  [11, 13, 17, 19].include?(n)
end

def small?
  -> (n) { n < 10 }
end

def prime?
  -> (n) { is_prime?(n) }
end

def negative?
  -> (n) { n < 0 }
end

def is_prime
  case 13
  when small? then puts 'small'
  when prime? then puts 'prime'
  else puts 'composite'
  end
end

def is_prime_or_negative
  case -13
  when negative? then puts 'negative'
  when small? then puts 'small'
  when prime? then puts 'prime'
  else puts 'composite'
  end
end

is_prime
is_prime_or_negative
