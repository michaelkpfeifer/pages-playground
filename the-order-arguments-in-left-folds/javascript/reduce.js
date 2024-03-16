const rev1 = () => {
  const collection = [1, 2, 3, 4, 5];
  const initialAccumulator = [];
  const combiningFunction = (currentAccumulator, currentItem) => [
    currentItem,
    ...currentAccumulator,
  ];

  return collection.reduce(combiningFunction, initialAccumulator);
};

const reduceWithNamedArgs = ({ over, from, withFn }) => {
  return over.reduce(withFn, from);
};

const rev2 = () => {
  const collection = [1, 2, 3, 4, 5];
  const initialAccumulator = [];
  const combiningFunction = (currentAccumulator, currentItem) => [
    currentItem,
    ...currentAccumulator,
  ];

  return reduceWithNamedArgs({
    over: collection,
    from: initialAccumulator,
    withFn: combiningFunction,
  });
};

console.log(rev1());
console.log(rev2());
