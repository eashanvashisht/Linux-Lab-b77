## Experiment 8: Shell Scripting – Jobs, File Comparison, Process & Memory Monitoring

### Name: Eashan Vashisht  Roll No.: 590028572  Date: 2025-10-02

### Aim:

* To learn about background and foreground job control in Linux.
* To compare files and check for content differences.
* To count and monitor processes and memory usage.
* To practice searching patterns in files using shell scripting.

### Requirements:

* A Linux machine with Bash shell.
* Access to commands: `jobs`, `fg`, `bg`, `kill`, `cmp`, `diff`, `ps`, `free`, `grep`.
* Knowledge of loops, conditionals, and user input in shell scripting.

---

## Theory:

Shell scripting in Linux allows automation of tasks and process management. Jobs can run in the **background** or **foreground**, and commands like `jobs`, `fg`, and `kill` allow control over them. File comparison utilities like `cmp` and `diff` help verify content differences. Monitoring system resources like processes and memory is essential for system performance management. Pattern searching using `grep` allows extraction and counting of specific text lines in files. Combining these commands into scripts enhances productivity and automates repetitive tasks.

---

## Procedure & Observations

---

## Task 1

### Task Statement:

Write a script that starts a background job (e.g., `sleep 60`), lists all jobs, brings the job to the foreground, and then terminates it.

### Command(s):

```bash
#!/bin/bash

sleep 60 &
jobs
fg %1
kill %1
```

### Output:

<p align="center">
<img src="img\t1.png" width="900">
</p>

---

## Task 2

### Task Statement:

Create a script that compares two files and displays whether their contents are identical or different.

### Command(s):

```bash
#!/bin/bash

read -p "Enterfile 1: " file1
read -p "Enterfile 2: " file2

if cmp -s "$file1" "$file2"; then
    echo "Files are identical."
else
    echo "Files are different."
fi
```

### Output:

<p align="center">
<img src="img\t2.png" width="900">
</p>

---

## Task 3

### Task Statement:

Write a script that counts the number of processes currently being run by your user.

### Command(s):

```bash
#!/bin/bash

echo "Number of processes for user $USER:"
ps -u $USER | wc -l
```

### Output:

<p align="center">
<img src="img\t3.png" width="900">
</p>

---

## Task 4

### Task Statement:

Develop a script that monitors memory usage every 5 seconds and logs it into a file.

### Command(s):

```bash
#!/bin/bash

while true; do
    echo "Mem use  $(date)" >> memory_log.txt
    free -m >> memory_log.txt
    echo "--------------------------" >> memory_log.txt
    sleep 5
done
```

### Output:

<p align="center">
<img src="img\t4.png" width="900">
</p>

---

## Task 5

### Task Statement:

Write a script that prompts for a filename and a search pattern, then displays the count of matching lines.

### Command(s):

```bash
#!/bin/bash

read -p "Enter fname: " file
read -p "Enter search pattern: " pattern

count=$(grep -c "$pattern" "$file")
echo "Number of matching lines: $count"
```

### Output:

<p align="center">
<img src="img\t5.png" width="900">
</p>

---

## Result

* Learned to manage background and foreground jobs.
* Compared file contents using shell scripting.
* Counted user processes and monitored memory usage automatically.
* Practiced searching patterns and counting occurrences in files.

---

## Challenges Faced & Learning Outcomes

* Challenge 1: Correctly identifying job numbers for `fg` and `kill`. Solved by carefully checking `jobs` output.
* Challenge 2: Infinite loops in memory monitoring script. Fixed by planning termination conditions or using `Ctrl+C`.

### Learning:

* Gained hands-on experience with job control commands.
* Learned file comparison techniques using `cmp`.
* Learned process counting and memory monitoring.
* Practiced pattern searching and line counting with `grep`.

---

## Conclusion

This experiment provided practical experience with shell scripting for **jobs, file comparison, process monitoring, memory logging, and pattern searching**, which are essential skills for Linux system administration and automation.
