import time

def fib(n):
    if n <= 1:
        return n
    return fib(n - 1) + fib(n - 2)

start = time.monotonic()
result = fib(40)
elapsed = time.monotonic() - start

print(f"Result: {result}")
print(f"Time: {elapsed:.3f}s")
