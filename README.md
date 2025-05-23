# Automating User and Computer Onboarding in Active Directory
## Overview
This project demonstrates how to automate the process of adding users and computers to an Active Directory (AD) environment. It includes best practices for organizing OUs, applying Group Policy Objects (GPOs), and using PowerShell scripts to streamline deployment and management.

## Features
Automated user and computer creation using PowerShell

Logical OU structure (e.g., Europe, Asia, Oceania)

## Group Policy configuration for:

- Drive mapping

- Password policies

- User restrictions

- Domain join automation

### Tips for applying Fine-Grained Password Policies (FGPP)

Why This Matters
Manually managing users and devices in a domain environment can be time-consuming and inconsistent. This project helps ensure a repeatable, efficient, and secure onboarding process suitable for labs, learning, or production use.

### Getting Started
Set up your AD Domain Services

Create OUs for regions or departments

Use the included PowerShell scripts to:

Add users and computers

Move objects to appropriate OUs

Configure and link GPOs to OUs as needed

Requirements
Windows Server with Active Directory Domain Services

PowerShell

Group Policy Management Console (GPMC)

License
This project is licensed under the MIT License.

