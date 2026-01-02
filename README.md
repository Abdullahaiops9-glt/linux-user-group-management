# Linux User & Group Management Automation

This project automates Linux user and group management using Bash scripting with root-level security checks and logging.

## Features
- User creation
- Group creation and assignment
- Root permission enforcement
- Action logging

## Structure

linux-user-group-management

├── user_group_manager.sh
├── user_mgmt.log
├── README.md
├── SETUP.md

## Project Structure
── mkdir linux-user-group-management
── cd linux-user-group-management
── touch user_group_manager.sh user_mgmt.log README.md SETUP.md
── chmod +x user_group_manager.sh

## Prerequisites
- Linux system (Ubuntu, Debian, CentOS)
- Root or sudo access
- Bash shell

## Run
sudo ./user_group_manager.sh

## Input:
Enter username: ali
Enter group: developers

## Output:
- User 'ali' created and added to group 'developers'

## Sample Log Output

- 2025-12-29 14:10:22 INFO: Group 'developers' created.
- 2025-12-29 14:10:23 INFO: User 'ali' created and added to group 'developers'.

## Script Explanation
 Root Check
  ── if [[ $EUID -ne 0 ]]; then

## Error Handling
- Prevents execution without root privileges
- Detects existing users and groups
- Logs warnings instead of failing silently

## User & Group Creation
── groupadd creates groups
── useradd -m creates users with home directories
── getent checks existing groups
── id checks existing users

## 📝 Logging
user_mgmt.log

## Linux Files To Check

── /etc/passwd → User account information
── /etc/group → Group definitions
── UID/GID → Unique identifiers for access control

## 🔐 Security Importance
── Root-only execution prevents misuse
── Logs help track administrative actions
── Automation reduces human error

## 🧾 Conclusion :
This project demonstrates how Bash scripting can automate critical Linux administrative tasks securely and efficiently. It reflects real-world system administration responsibilities and reinforces core Linux concepts such as users, groups, permissions, and security.

This project is part of my hands-on learning journey in Linux and Bash scripting.

## Project Owner
Abdullah
