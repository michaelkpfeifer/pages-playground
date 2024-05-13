// new Date with valid input
const validDate = new Date(Date.UTC(2021, 0, 15, 8, 0, 0));

console.log(validDate.toISOString()); // prints 2021-01-15T08:00:00.000Z

// new Date with invalid input
const invalidDate = new Date(Date.UTC(2021, 1, 30, 8, 0, 0));

console.log(invalidDate.toISOString()); // prints 2021-03-02T08:00:00.000Z
