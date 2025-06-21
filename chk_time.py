import datetime
import subprocess
import time

def wait_until_1700():
    while True:
        now = datetime.datetime.now()
        print(f"Current local time: {now.strftime('%H:%M:%S')}")

        if now.hour == 19 and now.minute == 28:
            print("It's 17:00 locally. Running the email test.")
            subprocess.run(["robot", "SendGmail.robot"])
            break
        else:
            time.sleep(30)

if __name__ == "__main__":
    wait_until_1700()