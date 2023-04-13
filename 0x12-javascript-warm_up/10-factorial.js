#!/usr/bin/node
function factorial (s) {
  if (s < 0) {
    return (-1);
  }
  if (s === 0 || isNaN(s)) {
    return (1);
  }
  return (s * factorial(s - 1));
}

console.log(factorial(Number(process.argv[2])));
Footer

