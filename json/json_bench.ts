const data = Array.from({ length: 10_000 }, (_, i) => ({
  id: i + 1,
  name: `user_${i + 1}`,
  active: (i + 1) % 2 === 0,
}));

const start = performance.now();

for (let i = 0; i < 100; i++) {
  const jsonStr = JSON.stringify(data);
  JSON.parse(jsonStr);
}

const elapsed = (performance.now() - start) / 1000;

console.log(`Time: ${elapsed.toFixed(3)}s`);
