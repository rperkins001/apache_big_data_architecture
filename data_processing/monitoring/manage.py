import subprocess

job_scripts = ["job1.py", "job2.py", "job3.py"]

for script in job_scripts:
    print(f"Running {script}...")
    subprocess.run(["spark-submit", script])
    print(f"Finished {script}")