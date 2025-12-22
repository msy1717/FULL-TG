import os
import json

# Telegram API Credentials
API_ID = int(os.getenv("TELEGRAM_API_ID", "27184521"))
API_HASH = os.getenv("TELEGRAM_API_HASH", "USE_SAME_HASH_FOR_ALL")

# Session folder
FOLDER = "./sessions"
PROXIES_FILE = "./proxies.json"

# Multiple Proxy Support
PROXIES = [
    # Format: {"ip": "1.1.1.1", "port": 8080, "user": "username", "pass": "password"}
]

# Default single proxy (for backward compatibility)
USE_PROXY = False
PROXY_IP = os.getenv("PROXY_IP", "")
PROXY_PORT = int(os.getenv("PROXY_PORT", "8080"))
PROXY_USERNAME = os.getenv("PROXY_USERNAME", "")
PROXY_PASSWORD = os.getenv("PROXY_PASSWORD", "")

# Multi-account settings
MAX_PARALLEL_ACCOUNTS = 5  # How many accounts to run in parallel
BATCH_OPERATION_DELAY = 1  # Delay between operations in seconds

os.makedirs(FOLDER, exist_ok=True)

def load_proxies():
    """Load proxies from file if exists"""
    if os.path.isfile(PROXIES_FILE):
        try:
            with open(PROXIES_FILE, "r") as f:
                return json.load(f)
        except:
            pass
    return PROXIES

def save_proxies(proxies_list):
    """Save proxies to file"""
    with open(PROXIES_FILE, "w") as f:
        json.dump(proxies_list, f, indent=2)
