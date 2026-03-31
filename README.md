# OSS-audit-24BAI10046

# Open Source Audit: Git

Student Name: Shaikh Mohammad Warsi

Registration Number : 24BAI10046

Course: Open Source Software (OSS NGMC)

Target Software: Git (Distributed Version Control System)

Environment: Fedora Linux (v42)

## 1. Project Overview

This repository contains the technical component of the "Open Source Audit" Capstone Project. The project involves a structured audit of Git, exploring its origins, licensing under GPL v2, and its ethical impact on the global software ecosystem.

Alongside the written report, these five shell scripts demonstrate practical Linux command-line skills, automation, and the integration of FOSS philosophy into system administration.

## 2. Repository Structure

- `script1.sh`: System Identity & FOSS Attribution
- `script2.sh`: FOSS Package Inspector (RPM-based)
- `script3.sh`: Disk and Permission Auditor
- `script4.sh`: Log File Analyzer with journalctl Fallback
- `script5.sh`: Open Source Manifesto Generator

## 3. Script Details

### Script 1: System Identity Report

Introduces the auditor and identifies the specific Linux distribution and kernel version. It serves as a "welcome screen" that attributes the system's power to community-driven Linux distributions.

### Script 2: FOSS Package Inspector

Specifically targets the git package using rpm queries. It verifies installation, extracts version/license metadata, and provides a philosophical analysis of Git's role in democratizing code collaboration.

### Script 3: Disk & Permission Auditor

Iterates through critical system directories (`/etc`, `/usr/bin`, etc.) to report disk usage and permissions. It includes a specific audit for the local `.gitconfig` file to ensure proper user configuration.

### Script 4: Log File Analyzer

A robust log scanner that searches for "error" keywords. It features an intelligent fallback mechanism: if `/var/log/messages` is unreadable due to permissions, it automatically pulls data from `journalctl` to ensure the audit can proceed.

### Script 5: Manifesto Generator

An interactive script that engages the user with questions about open-source freedom. It generates a personalized `manifesto_[user].txt` file containing a humanized reflection on transparency and communal innovation.

## 4. Getting Started

### Prerequisites

- A Linux environment (Optimized for Fedora).
- git installed (`sudo dnf install git`).
- Bash shell.

### Installation & Execution

```bash
git clone https://github.com/shaikhwaris94/OSS-audit-24BAI10046
cd OSS-audit-24BAI10046

chmod +x script*.sh

./script1.sh
./script2.sh
./script3.sh
./script4.sh
./script5.sh
```

## 5. Technical Note on Fedora

These scripts utilize `rpm` and `dnf` logic for package management and `journalctl` for log retrieval. While they are compatible with most Bash environments, the package inspection and log fallback are specifically tailored for Fedora's architecture.

This project is submitted as part of the VITyarthi Open Source Software Capstone requirement.

## GitHub Repository

https://github.com/shaikhwaris94/OSS-audit-24BAI10046
