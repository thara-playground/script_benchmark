import os
import tempfile
import time

data = "x" * 1_000_000

fd, path = tempfile.mkstemp()
os.close(fd)

start = time.monotonic()

for _ in range(100):
    with open(path, "w") as f:
        f.write(data)
    with open(path, "r") as f:
        f.read()

elapsed = time.monotonic() - start

os.remove(path)

print(f"Time: {elapsed:.3f}s")
