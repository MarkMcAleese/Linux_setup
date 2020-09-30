rm -r build dist __pycache__ weather-client.py~ weather-client.spec
pyinstaller --onefile weather-client.py
