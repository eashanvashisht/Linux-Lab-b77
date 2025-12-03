
# Experiment 12: Building a Rule-Based Expert System  
**Name:** Eashan Vashisht  
**Roll No.:** 590028572  
**Date:** 2025-11-30

---

## Aim
To develop a rule-based expert system using shell scripting, and automate system tasks using cron scheduling and system administration scripts.

---

## Requirements
- Linux system with Bash shell  
- Text editor (nano/vim)  
- Access to cron  
- Basic shell scripting knowledge  

---

## Theory

### 1. Process Automation & Job Scheduling
Linux provides tools to automate tasks:

#### cron (Recurring tasks)
```
minute hour day month day_of_week command
```
Example:  
```
0 9 * * * /home/user/backup.sh
```

#### at (One-time tasks)
```
echo "/home/user/script.sh" | at 2:00 AM
```

---

### 2. System Administration Scripts
Used for automated:
- Backups  
- User management  
- Log monitoring  
- Health checks  

---

### 3. Services and Daemons
Managed using systemctl:
```
systemctl start service
systemctl stop service
systemctl enable service
systemctl status service
```

---

## Procedure & Observations
Students created a rule-based medical expert system using:
- If-else logic  
- Pattern matching  
- Multi-symptom handling  
- Cron scheduling  

---

# LAB EXERCISE

## Exercise: Basic Medical Expert System

### Task Statement
Create a simple expert system that gives recommendations based on user symptoms.

### Commands
```bash
#!/bin/bash
echo "Welcome to the Medical Expert System"
echo "Enter your symptoms:"
read symptoms

if [[ "$symptoms" == *"fever"* ]]; then
    echo "Recommendation: Take fever reducer and rest."
fi
if [[ "$symptoms" == *"cough"* ]]; then
    echo "Recommendation: Drink warm fluids."
fi
if [[ "$symptoms" == *"cold"* ]]; then
    echo "Recommendation: Use decongestants."
fi

if [[ "$symptoms" != *"fever"* && "$symptoms" != *"cough"* && "$symptoms" != *"cold"* ]]; then
    echo "Consult a doctor."
fi
```

### Output  
---
![47cf586296b1db886ce602ee85343715.png](../_resources/47cf586296b1db886ce602ee85343715.png)
---

# ASSIGNMENTS

## Assignment 1: Extended Expert System

### Task Statement
Improve the expert system with multiple symptoms and detailed recommendations.

### Commands
```bash
#!/bin/bash
echo "Enter symptoms separated by commas:"
read symptoms

symptoms_lower=$(echo "$symptoms" | tr '[:upper:]' '[:lower:]')

if [[ "$symptoms_lower" == *"fever"* ]]; then
    echo "• Take medication"
    echo "• Monitor temperature"
fi
if [[ "$symptoms_lower" == *"fatigue"* ]]; then
    echo "• Get proper sleep"
fi
if [[ "$symptoms_lower" == *"nausea"* ]]; then
    echo "• Drink ginger tea"
fi
```

### Output  
---
![517573596b4392d7d401ef9fea16dbd8.png](../_resources/517573596b4392d7d401ef9fea16dbd8.png)
---

## Assignment 2: Scheduling Using Cron

### Task Statement
Schedule the expert system to run daily at 8 AM.

### Commands
```
crontab -e
```

Add:
```
0 8 * * * /path/to/expert_system.sh
```

Make executable:
```bash
chmod +x /path/to/expert_system.sh
```

### Output  
---
![181674084edb11f0cef0b89c81ebb75e.png](../_resources/181674084edb11f0cef0b89c81ebb75e.png)
![87187990f611467aaa7f9e2d5839e913.png](../_resources/87187990f611467aaa7f9e2d5839e913.png)
![5553d75f948675cb54a59998ba2fff2b.png](../_resources/5553d75f948675cb54a59998ba2fff2b.png)
---

## Assignment 3: Multi-Recommendation System

### Task Statement
Use associative arrays to provide structured recommendations.

### Commands
```bash
#!/bin/bash
declare -A recommendations
recommendations["fever"]="Take medication|Stay hydrated"
recommendations["cold"]="Rest|Use nasal spray"

symptoms=$(echo "$input" | tr ',' ' ')
for s in $symptoms; do
    echo "For $s:"
    IFS='|' read -ra tips <<< "${recommendations[$s]}"
    for t in "${tips[@]}"; do
        echo "- $t"
    done
done
```

### Output  
---
![cfa709ff5078847e52185119b0c58267.png](../_resources/cfa709ff5078847e52185119b0c58267.png)
---

## Result
The rule-based expert system was successfully built.  
Cron scheduling and automation concepts were demonstrated.  

---

## Conclusion
This experiment taught rule-based logic, automation, and expert system development using shell scripting.  
