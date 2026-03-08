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
| Ruby    | 4.0.1 |
| Python  | 3.14.3 |
| Bun     | 1.3.10 |

| Benchmark | Ruby | Python | Bun |
|-----------|------|--------|-----|
| Fibonacci | 5.196s | 11.087s | **0.471s** |
| File I/O  | 0.065s | 0.070s | **0.045s** |
| JSON      | 0.264s | 0.712s | **0.169s** |

## Usage

```bash
bash run_all.sh
```
