#!/usr/bin/env python3
"""
Write an alternating-bit CSV (0,1,0,1,...) for N bits.
Defaults: 480 bits -> data_480.csv
"""

import argparse
import csv
import os

def write_alternating_csv(filename: str, nbits: int) -> None:
    os.makedirs(os.path.dirname(filename) or ".", exist_ok=True)
    with open(filename, "w", newline="") as f:
        w = csv.writer(f)
        w.writerow(["data_bit"])  # header (ignored by your generator)
        for i in range(nbits):
            w.writerow([i % 2])   # 0,1,0,1,...

if __name__ == "__main__":
    ap = argparse.ArgumentParser(description="Generate alternating-bit CSV")
    ap.add_argument("--bits", type=int, default=480, help="Number of bits")
    ap.add_argument("--filename", type=str, default="data_480.csv", help="Output CSV filename")
    args = ap.parse_args()
    write_alternating_csv(args.filename, args.bits)

