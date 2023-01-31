from clearly.client import ClearlyClient

print("Creating client")
client = ClearlyClient(host='localhost', debug=True)

print('Capturing...')
# client.capture_tasks()
client.capture()