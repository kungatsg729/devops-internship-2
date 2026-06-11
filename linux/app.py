from flask import Flask
import subprocess

app = Flask(__name__)

@app.route('/')
def index():
    result = subprocess.run(
        ['bash', '/app/system_info.sh'],
        capture_output=True, text=True
    )
    output = result.stdout.replace('\n', '<br>')
    return f"""
    <html>
    <head>
        <title>System Info</title>
        <style>
            body {{ background: #0d1117; color: #00ff00; font-family: monospace; padding: 40px; }}
            h1 {{ color: #58a6ff; }}
            pre {{ background: #161b22; padding: 20px; border-radius: 8px; }}
        </style>
    </head>
    <body>
        <h1>System Info Dashboard</h1>
        <pre>{result.stdout}</pre>
    </body>
    </html>
    """

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
