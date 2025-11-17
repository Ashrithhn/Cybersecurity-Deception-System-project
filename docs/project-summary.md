# Project summary

**Title:** Cybersecurity Deception System

**Goal:** Design and deploy a deception-based security lab that uses honeypots to attract
attackers, log their actions, and analyze attacker TTPs. The platform captures attacker
commands, file uploads, session transcripts, and produces dashboards for visualization.

**Environment**
- Host: VirtualBox
- Victim: Xubuntu with Cowrie (honeypot)
- Attacker: Kali Linux
- Network: Internal network 192.168.100.0/24 (intnet), NAT for internet access.

**Primary tools**
- Cowrie (SSH/Telnet honeypot)
- Grafana + Loki (log collection & visualization)
- Snort (IDS)
- Wireshark (packet capture & analysis)

**Key deliverables**
- Cowrie configured to simulate SSH service on port 2222 (redirect from 22).
- Grafana dashboards showing login attempts, session counts, and command frequency.
- Automated alerts (Telegram/email) for suspicious activity (examples shown in screenshots).
- Lab documentation and sample logs for analysis.

