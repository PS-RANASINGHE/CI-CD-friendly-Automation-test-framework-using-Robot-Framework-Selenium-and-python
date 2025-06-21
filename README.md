# Scheduled Email Automation using Python and Robot Framework

## 📌 Project Overview

This project is a lightweight automation system that **triggers an email-sending Robot Framework test case at a specific time** using a Python scheduler. It demonstrates how to integrate **Python’s scheduling and subprocess management** with **Robot Framework’s automation capabilities**.

---

## 🧠 Features

- ⏰ Monitors system local time continuously
- 📨 Triggers an automated email via `SendGmail.robot` at a scheduled time (e.g., 19:28)
- ✅ Uses Robot Framework for structured test-case execution
- 🛠️ Can be extended to support any automated task (not just email)
- 🖥️ Terminal-friendly, minimal dependencies, cross-platform

---

## 🗂️ File Structure
📦scheduled-email-automation

├── 📄 chk_time.py            # Python script that waits until a specific time and triggers Robot Framework execution

├── 🤖 SendGmail.robot        # Robot Framework test case that handles sending an email

├── 📄 output.xml             # Raw test execution result (Robot Framework default)

├── 📄 log.html               # Detailed test execution log with keyword-level debugging info

├── 📄 report.html            # High-level test summary report

└── 📘 README.md              # Project documentation and usage guide

---

## ⚙️ How It Works

1. `chk_time.py`:
   - Imports the `datetime`, `subprocess`, and `time` modules.
   - Continuously checks the current local time using `datetime.datetime.now()`.
   - Once the time matches the preset (e.g., 19:28), it runs:
     ```bash
     robot SendGmail.robot
     ```
   - Uses `subprocess.run()` for external script execution.
   - Sleeps for 30 seconds between checks to reduce CPU usage.

2. `SendGmail.robot`:
   - Contains Robot Framework test cases to send an email.
   - Can be integrated with Gmail via UI automation or API (e.g., using SeleniumLibrary or HTTP calls).

---

## ✅ Use Case in Real-world Industry

This automation flow is applicable in various industrial scenarios:

### 🔹 Scheduled Email Alerts
Automatically send:
- Daily system logs
- Business analytics reports
- Test result summaries

### 🔹 Scheduled Test Execution
Run:
- Health checks for applications at off-hours
- Regression test suites overnight
- Smoke tests every evening

### 🔹 Notification and Compliance Tasks
- Send compliance reminders
- Trigger data export or report generation scripts on a fixed schedule



## 🚀 Setup Instructions

### 1. Install Robot Framework
```bash
pip install robotframework
```
### 2. install selenium

```bash
pip install robotframework-seleniumlibrary
```

### 3. Run project

```bash
python chk_time.py
```

🔧 Automated Task Triggering System Using Python & Robot Framework

More information available at - 

I developed a lightweight automation tool that monitors system time and executes a Robot Framework script at a precise moment. The Python script continuously checks the local time, and when the scheduled time is reached, it triggers a .robot test case — in this instance, to send an automated email.

💡 Technology Stack:

Python for scheduling and process control (datetime, subprocess, time)

Robot Framework for test execution and automation scripting

✅ Core Features:

- Scheduled task execution
- Time-based event automation
- Integration-ready structure for CI/CD pipelines

💼 Real-World Use Cases in Industry:

🔄 Nightly Batch Processing:
Automate nightly data uploads, ETL jobs, or file transfers (e.g., uploading logs to S3 or triggering Azure Data Factory pipelines).

📊 Automated Reporting:
Schedule performance or analytics reports to be sent to stakeholders at fixed intervals (e.g., daily SLA reports or security logs).

🔔 Compliance & Alerting:
Trigger compliance-related notifications (like backup verification reports or audit logs) exactly at regulation-defined times.

📧 Email-Based System Monitoring:
Send automated health-check summaries or alert emails if a system status is checked and fails at a scheduled time.

🎯 CI/CD Pipeline Initiation:
Kick off integration or regression test suites automatically at specified times, especially for systems without webhook triggers.

🛡️ Security Automation:
Launch vulnerability scans or trigger patch verification processes during low-traffic hours using tools integrated with Robot Framework.

🕒 Time-Based Access Control:
Temporarily enable/disable systems or user access privileges based on predefined business hours or maintenance windows
