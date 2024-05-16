zero = -> (n) { n % 4 ==  0 }
one = -> (n) { n % 4 ==  1 }
two = -> (n) { n % 4 ==  2 }
three = -> (n) { n % 4 ==  3 }

mod_4_case_equality = lambda do
  case 3
  when zero then puts 'divisile'
  when one then puts 'residue 1'
  when two then puts 'residue 2'
  when three then puts 'residue 3'
  else puts 'impossible'
  end
end

def mod_4_simple_case
  case 3 % 4
  when 0 then puts 'divisile'
  when 1 then puts 'residue 1'
  when 2 then puts 'residue 2'
  when 3 then puts 'residue 3'
  else puts 'impossible'
  end
end

def mod_4_define_method
  [[:zero, 0], [:one, 1], [:two, 2], [:three, 3]].each do |(name, residue)|
    define_method(name) { -> (n) { n % 4 == residue } }
  end

  case 3
  when zero then puts 'divisile'
  when one then puts 'residue 1'
  when two then puts 'residue 2'
  when three then puts 'residue 3'
  else puts 'impossible'
  end
end

mod_4_case_equality.call
mod_4_simple_case
mod_4_define_method
