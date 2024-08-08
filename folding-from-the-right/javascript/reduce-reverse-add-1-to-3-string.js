const res = ["1", "2", "3"]
  .reverse()
  .reduce((acc, val) => "(" + val + " ⊕ " + acc + ")", "0");
console.log(res);
