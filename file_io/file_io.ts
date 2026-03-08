import { writeFileSync, readFileSync, unlinkSync, mkdtempSync } from "fs";
import { join } from "path";
import { tmpdir } from "os";

const data = "x".repeat(1_000_000);
const dir = mkdtempSync(join(tmpdir(), "bench-"));
const path = join(dir, "test.txt");

const start = performance.now();

for (let i = 0; i < 100; i++) {
  writeFileSync(path, data);
  readFileSync(path, "utf-8");
}

const elapsed = (performance.now() - start) / 1000;

unlinkSync(path);

console.log(`Time: ${elapsed.toFixed(3)}s`);
