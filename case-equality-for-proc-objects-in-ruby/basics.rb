def even?
  ->(n) { n.even? }
end

def odd?
  ->(n) { n.odd? }
end

def even_or_odd_if_else
  if even? === 3
    puts 'even'
  elsif odd? === 3
    puts 'odd'
  else
    puts 'impossible'
  end
end

def even_or_odd_call
  if even?.call(3)
    puts 'even'
  elsif odd?.call(3)
    puts 'odd'
  else
    puts 'impossible'
  end
end

def even_or_odd_basic
  case 3
  when even? then puts 'even'
  when odd? then puts 'odd'
  else puts 'impossible'
  end
end

even_or_odd_if_else
even_or_odd_call
even_or_odd_basic
