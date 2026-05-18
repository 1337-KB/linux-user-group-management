# Linux User & Group Management Lab

## Overview
Simulated a multi-department Linux server environment with 
isolated access controls per department.

## What I Did
- Created user groups for developers and marketing teams
- Provisioned 4 user accounts with appropriate group memberships
- Configured directory permissions using chmod and chown
- Implemented sticky bit on shared directory to prevent 
  users from deleting each other's files

## Technologies Used
- Linux (Ubuntu)
- Bash

## Commands Covered
useradd, userdel, groupadd, usermod, chmod, chown, passwd, id

## How to Run
bash setup.sh
