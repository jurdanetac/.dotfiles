#!/usr/bin/env python3

from subprocess import run

print(" ".join(run(["uptime", "-p"], capture_output=True).stdout.decode("utf-8").split()[1:]), flush=True)
