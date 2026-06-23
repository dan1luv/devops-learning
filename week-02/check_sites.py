#!/usr/bin/env python3
import urllib.request
import datetime
import ssl
import certifi

sites = [
 "https://google.com",
 "https://github.com",
 "https://httpstat.us/500",
]

timestamp = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
report = f"Проверка сайтов: {timestamp}\n"

for site in sites:
 try:
  urllib.request.urlopen(site, timeout=5, context=ssl.create_default_context(cafile=certifi.where()))
  report += f"✓ {site}\n"
 except Exception as e:
  report += f"✗ {site} - {e}\n"

print(report)

with open("week-02/report.txt", "a") as f:
 f.write(report + "\n")
