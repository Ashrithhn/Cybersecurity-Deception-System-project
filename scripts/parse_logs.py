#!/usr/bin/env python3
# parse_logs.py
# Simple example to parse a JSON Cowrie log and extract command inputs.
import json
from pathlib import Path

logfile = Path('results/sample_cowrie_session.json')
if not logfile.exists():
    print('No sample log found at', logfile)
    raise SystemExit(0)

with logfile.open() as f:
    data = json.load(f)

commands = [e for e in data if e.get('eventid','').startswith('cowrie.command')]
for c in commands:
    print(c.get('timestamp',''), c.get('src_ip',''), c.get('eventid',''), c.get('input',''))
