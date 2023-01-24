from clearly.client import ClearlyClient

print("Creating client")
client = ClearlyClient(host='clearly-server', debug=True)

print('Capturing tasks...')
client.capture_tasks()