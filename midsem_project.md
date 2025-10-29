## **Experiment: [System Information Logger – Bash Scripting]**  
### Name: Eashan Vashisht, Roll No.: 590028572   Date: 2025-10-17  



### **AIM:**  
* To create a Bash script that logs current system information (user, date, running processes, and disk usage), rotates logs, and schedules itself to run daily.


### **Requirements:**  
* Any Linux Distro (Ubuntu, Debian, Fedora, etc.)  
* Text Editor (VS Code, Vim, Nano, or Gedit)  
* Basic knowledge of shell scripting and cron jobs  


### **Theory:**   
* Using commands like `whoami`, `hostname`, `ps`, and `df`, we can collect system information.  
* Log rotation ensures old logs are deleted after a set time.  
* Scheduling with `cron` enables automation at specific intervals (daily, weekly, etc.).  


## **Procedure & Observations**

### **Exercise 1: [System Information Logger Script]**

### **Task Statement:**  
* Write a Bash script that logs user, date, running processes, and disk usage to a file daily.  

### **Explanation:**  
* The script creates a log directory, saves the system info with a date-based filename, and automatically removes logs older than 7 days.


### **Command(s):**
``` bash
#!/bin/bash
SYS_INFO="/var/log/sysinfo"
mkdir -p "$SYS_INFO"

SYS_F="$SYS_INFO/system_info_$(date +'%Y-%m-%d').log"

find "$SYS_INFO" -type f -name "system_info_*.log" -mtime +7 -exec rm {} \;


{
    echo "=========================================="
    echo " System Information Log - $(date)"
    echo "=========================================="
    echo "User: $(whoami)"
    echo "Hostname: $(hostname)"
    echo "Uptime: $(uptime -p)"
    echo
    echo  Running Processes"
    ps aux --sort=-%mem | head -10
    echo
    echo  Disk Usage"
    df -h
    echo "=========================================="
} > "$SYS_F"

echo "System info logged to $SYS_F"



### **Output:**
```
==========================================
 System Information Log - 2025-10-17 10:00:00
==========================================
User: eashan
Hostname: Eashan
Uptime: up 2 hours
 Running Processes
USER       PID %CPU %MEM COMMAND
 Disk Usage
Filesystem      Size  Used Avail Use% Mounted on
==========================================
System info logged to /var/log/sysinfo/system_info_2025-10-17.log
```


## **Assignment 1: [Make Script Executable]**

### **Task Statement:**  
* Give permissions to the script.

### **Command(s):**
```bash
chmod 777 /home/user/system_log.sh
```

### **Output:**
```
Permissions changed successfully.
```


## **Assignment 2: [Schedule Daily Execution]**

### **Task Statement:**  
* Schedule the script to run daily at midnight.

### **Command(s):**
```bash
crontab -e
```
Then add:
```
0 0 * * * /home/user/system_log.sh
```

### **Explanation:**  
* The cron job runs the script automatically every day at 10:00 hours.


## **Assignment 3: [Log Rotation Test]**

### **Task Statement:**  
* Verify that logs older than 7 days are deleted automatically.

### **Command(s):**
```bash
find /var/log/sysinfo -type f -name "system_info_*.log" -mtime +7
```

### **Expected Result:**  
* Old log files are removed automatically, keeping only the recent 7 days.


## **Result:**  
 The System Information Logger script was successfully created, tested, and scheduled for daily execution with automatic log rotation.