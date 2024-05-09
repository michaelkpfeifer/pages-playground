def rev
  collection = [1, 2, 3, 4, 5]
  initial_accumulator = []
  combining_function = lambda do |current_accumulator, current_item|
    [current_item] + current_accumulator
  end

  collection.inject(initial_accumulator, &combining_function)
end

printf("%s\n", rev) # prints [5, 4, 3, 2, 1]
