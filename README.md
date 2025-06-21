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

