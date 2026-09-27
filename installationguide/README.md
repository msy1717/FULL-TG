# Installation Guide - FULL-TG v3.0

## Complete Step-by-Step Installation

---

## 🐍 Python Installation

### Option 1: Python 3.11 (Recommended)

#### Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install python3.11 python3.11-dev python3.11-venv -y
python3.11 --version
```

#### Linux (Fedora/RHEL)
```bash
sudo dnf install python3.11 python3.11-devel -y
python3.11 --version
```

#### macOS
```bash
# Using Homebrew
brew install python@3.11
python3.11 --version

# Or using MacPorts
sudo port install python311
```

#### Windows
1. Download from: https://www.python.org/downloads/release/python-3110/
2. Run installer
3. ✅ Check "Add Python 3.11 to PATH"
4. Click "Install Now"
5. Verify: `python --version`

---

### Option 2: Python 3.12 (Latest)

#### Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install python3.12 python3.12-dev python3.12-venv -y
python3.12 --version
```

#### Linux (Fedora/RHEL)
```bash
sudo dnf install python3.12 python3.12-devel -y
python3.12 --version
```

#### macOS
```bash
brew install python@3.12
python3.12 --version
```

#### Windows
1. Download from: https://www.python.org/downloads/release/python-3120/
2. Run installer
3. ✅ Check "Add Python 3.12 to PATH"
4. Click "Install Now"
5. Verify: `python --version`

---

## 📦 Project Setup

### Step 1: Clone Repository
```bash
git clone https://github.com/msy1717/FULL-TG.git
cd FULL-TG
```

### Step 2: Create Virtual Environment

**For Python 3.11:**
```bash
python3.11 -m venv venv
```

**For Python 3.12:**
```bash
python3.12 -m venv venv
```

### Step 3: Activate Virtual Environment

**Linux/macOS:**
```bash
source venv/bin/activate
```

**Windows (CMD):**
```cmd
venv\Scripts\activate
```

**Windows (PowerShell):**
```powershell
venv\Scripts\Activate.ps1
```

### Step 4: Upgrade pip
```bash
pip install --upgrade pip
```

### Step 5: Install Dependencies
```bash
pip install -r requirements.txt
```

### Step 6: Verify Installation
```bash
pip list
python -c "import telethon; print(telethon.__version__)"
```

---

## 🔑 API Configuration

### Get Telegram API Keys

1. Visit: https://my.telegram.org/auth/login
2. Login with your phone number
3. Click "API development tools"
4. Fill in app details:
   - App name: "FULL-TG"
   - Short name: "fulltg"
   - Type: Desktop
5. Copy **API_ID** and **API_HASH**

### Configure config.py

```python
# config.py
API_ID = 27184521  # Replace with your API_ID
API_HASH = "your_api_hash_here"  # Replace with your API_HASH

FOLDER = "./sessions"
PROXIES_FILE = "./proxies.json"
MAX_PARALLEL_ACCOUNTS = 5
BATCH_OPERATION_DELAY = 1
```

---

## 🚀 First Run

```bash
# Activate virtual environment (if not already activated)
source venv/bin/activate  # or venv\Scripts\activate on Windows

# Run the application
python app.py
```

**First Time:**
1. Select Option 1 (Login Account)
2. Enter your Telegram phone: +1234567890
3. Telegram will send you a code
4. Enter the code in the prompt
5. If 2FA enabled, enter password
6. Success! Account is logged in

---

## 📋 Troubleshooting Installation

### "Command not found: python3.11"
**Solution:** 
- Python 3.11 not installed
- Try: `python3.11 --version`
- If not found, reinstall Python 3.11

### "ModuleNotFoundError: No module named 'telethon'"
**Solution:**
- Dependencies not installed
- Run: `pip install -r requirements.txt`
- Verify: `pip list`

### "Permission denied: venv/bin/activate"
**Solution (Linux/macOS):**
```bash
chmod +x venv/bin/activate
source venv/bin/activate
```

### "pip: command not found"
**Solution:**
- Python not in PATH
- On Windows: Reinstall Python and check "Add Python to PATH"
- On Linux: Install python3-pip: `sudo apt install python3-pip`

### "virtual environment: command not found"
**Solution:**
```bash
# Install venv module
python3.11 -m venv venv  # This creates venv if not exists
```

---

## ✅ Verify Installation

```bash
# Check Python version
python --version

# Check if telethon is installed
python -c "import telethon; print('Telethon:', telethon.__version__)"

# Check if colorama is installed
python -c "import colorama; print('Colorama installed')"

# Check if aiohttp is installed
python -c "import aiohttp; print('aiohttp installed')"

# Run the app
python app.py
```

---

## 🔄 Updating the Application

```bash
# Pull latest changes
git pull origin main

# Update dependencies (if requirements.txt changed)
pip install -r requirements.txt --upgrade

# Restart the application
python app.py
```

---

## 🧹 Clean Installation (Fresh Start)

```bash
# Deactivate virtual environment
deactivate

# Remove old environment
rm -rf venv  # Linux/macOS
rmdir venv /s /q  # Windows CMD
Remove-Item -Recurse -Force venv  # Windows PowerShell

# Remove cache
rm -rf __pycache__
find . -type d -name "__pycache__" -exec rm -rf {} +

# Create fresh environment
python3.11 -m venv venv

# Activate and reinstall
source venv/bin/activate
pip install -r requirements.txt

# Run
python app.py
```

---

## 💾 Uninstall

```bash
# Deactivate virtual environment
deactivate

# Remove project folder
rm -rf FULL-TG  # Linux/macOS
rmdir FULL-TG /s /q  # Windows CMD

# Done!
```

---

## ✨ Next Steps

1. Read: `README.md` for features overview
2. Login your first account (Option 1)
3. Try Option 3 (Change Profile Name)
4. Try Option 14 (Mass Invite)
5. Explore other features!

---

**Installation Complete! 🎉**
