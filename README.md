# OSU Cybersecurity Project Repository

This repository will serve as a small portfolio of some of the projects I have worked on.

## [ELK Deployment](./1-ELK_Deployment/README.md)

This project's goal was to provision virtual machines, load balancers, and firewalls in Microsoft Azure. Following that Ansible was used to automate the installation of Docker, and either DVWA or an ELK stack across the provisioned virtual machines.

## [Red Vs Blue](./2-Red_Vs_Blue/Red_Vs_Blue.pdf)

The goal of the Red team was to exfiltrate data (capture flags) on a target machine running an Apache web server. Some of the tools used by the Read team include Nmap, Searchsploit, and Metasploit. The Blue team used Kibana to view and track the network traffic during the Red team's attack and devise defensive strategies to harden the network against the vulnerabilities exploited.

## [Digital Forensics Investigation - Group Project](./3-Digital_Forensics/Digital_Forensics_Final_Report.pdf)

A small team was given a copy of a suspects Iphone hard drive. Together the group used Autopsy to gather evidence and extract data relevant to the subjects involvement in an art heist. This required the use of other tools such as SQLite Browser to explore databases contained on the Iphone. Other stenography tools to find messages hidden in images and audio files. Finally this project required a small amount of group management skills to ensure each group member had tasks to do that fit their skill set and someone to ensure all data was combined properly.

## [Final Project](./4-Final_Project/)

This project is a showcase of all the skills learned throughout the bootcamp. The first part of this project was done individually and then a presentation was developed as a group and presented to the class. 

The first individual section focused on [defense](./4-Final_Project/Defense.md). In this section I defined the network and set some alerts in the network's ELK stack. Next was [offense](./4-Final_Project/Offense.md) where I attacked a wordpress server to collect flags and potentially trigger the alerts set in the defensive portion of the project to verify they worked properly. Finally the [network](./4-Final_Project/Network.md) portion of the project focused on the utilization of Wireshark to analyze network traffic and find illegal and malicious file downloads.

As a group we chose to present on the defensive section of the project. The pdf version of the group presentation can be seen [here](./4-Final_Project/Sowers-Defensive_Final_Project_Presentation.pdf)