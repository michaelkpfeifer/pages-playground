import gleam/list
import gleam/io

pub fn rev1() {
  let collection = [1, 2, 3, 4, 5]
  let initial_accumulator = []
  let combining_function = fn(current_accumulator, current_item) {
    [current_item, ..current_accumulator]
  }

  list.fold(collection, initial_accumulator, combining_function)
}

pub fn rev2() {
  let collection = [1, 2, 3, 4, 5]
  let initial_accumulator = []
  let combining_function = fn(current_accumulator, current_item) {
    [current_item, ..current_accumulator]
  }

  list.fold(
    over: collection,
    from: initial_accumulator,
    with: combining_function,
  )
}

pub fn main() {
  io.debug(rev1())
  io.debug(rev2())
}
