const res = ["1", "2", "3"]
  .reduceRight((acc, val) => "(" + val + " ⊕ " + acc + ")", "0");
console.log(res);
