#!/usr/bin/env python3

from subprocess import run

output = run(["uptime"], capture_output=True).stdout.decode("utf-8").split()[1:]

print(
    output[1].replace(",", ""),
    flush=True,
)
