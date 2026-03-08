function fib(n: number): number {
  if (n <= 1) return n;
  return fib(n - 1) + fib(n - 2);
}

const start = performance.now();
const result = fib(40);
const elapsed = (performance.now() - start) / 1000;

console.log(`Result: ${result}`);
console.log(`Time: ${elapsed.toFixed(3)}s`);
