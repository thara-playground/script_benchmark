# Script Benchmark

Ruby / Python / Bun (TypeScript) の簡易パフォーマンスベンチマーク。

## Benchmarks

| Benchmark | 内容 |
|-----------|------|
| Fibonacci | `fib(40)` の再帰計算 |
| File I/O  | 1MB テキストの書き込み/読み込み x100回 |
| JSON      | 10,000要素の配列を serialize/deserialize x100回 |

## Results

Environment: Apple Silicon (Darwin 25.2.0)

| Runtime | Version |
|---------|---------|
| Ruby    | 2.6.10p210 |
| Python  | 3.13.3 |
| Bun     | 1.3.10 |

| Benchmark | Ruby | Python | Bun |
|-----------|------|--------|-----|
| Fibonacci | 9.785s | 12.985s | **0.470s** |
| File I/O  | 0.051s | 0.049s | **0.044s** |
| JSON      | 1.263s | 0.637s | **0.168s** |

## Usage

```bash
bash run_all.sh
```
