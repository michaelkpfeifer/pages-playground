// new Date with valid input
const validDate = new Date(2021, 0, 15);

console.log(validDate.toDateString()); // prints "Fri Jan 15 2021"

// new Date with invalid input
const invalidDate = new Date(2021, 1, 30);

console.log(invalidDate.toDateString()); // prints "Tue Mar 02 2021"
