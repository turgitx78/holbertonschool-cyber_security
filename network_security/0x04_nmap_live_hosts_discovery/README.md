# 0x04 Nmap Live Hosts Discovery

This directory contains bash scripts that use **nmap** to discover live hosts
on a given subnetwork using different discovery techniques.

## Scripts

- `0-arp_scan.sh`  
  Discover live hosts using ARP scan.

- `1-icmp_echo_scan.sh`  
  Discover live hosts using ICMP Echo request.

- `2-icmp_timestamp_scan.sh`  
  Discover live hosts using ICMP Timestamp request.

## Usage

All scripts must be run as a privileged user.

```bash
./script_name.sh <subnet>

