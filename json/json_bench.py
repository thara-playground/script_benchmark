import json
import time

data = [{"id": i, "name": f"user_{i}", "active": i % 2 == 0} for i in range(1, 10_001)]

start = time.monotonic()

for _ in range(100):
    json_str = json.dumps(data)
    json.loads(json_str)

elapsed = time.monotonic() - start

print(f"Time: {elapsed:.3f}s")
