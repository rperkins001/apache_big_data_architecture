import requests

spark_master_url = "http://localhost:8080"

response = requests.get(f"{spark_master_url}/json")
data = response.json()

for app in data["activeapps"]:
    print(f"App ID: {app['id']}")
    print(f"App Name: {app['name']}")
    print(f"App State: {app['state']}")
    print("-----")