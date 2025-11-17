# Threat overview (sample analysis)

This directory contains sanitized examples of attacker activity captured during lab runs.
Files are trimmed and redacted to remove any real-world sensitive data.

## Example findings
- Repeated SSH brute-force attempts observed from a single source during a 10-minute window.
- Common usernames attempted: `root`, `admin`, `ubuntu`.
- Commands executed by attackers often include reconnaissance commands such as `ls`, `pwd`,
  `whoami`, followed by attempts to download or execute scripts.
- Cowrie captured file upload events (possible malware), stored under Cowrie's `dl` folder.

## How to interpret logs
- Cowrie JSON logs include `eventid` fields such as:
  - `cowrie.session.connect`
  - `cowrie.command.input`
  - `cowrie.command.failed`
  - `cowrie.session.closed`
- Use Loki/Grafana to filter on `eventid="cowrie.command.input"` to list commands sent by attackers.

