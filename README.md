# FULL-TG v3.0 🚀

**100+ Features | Multi-Proxy Support | Multi-Account Parallel Operations | Professional Telegram Automation Suite**

---

## 📋 Table of Contents
- [Features](#-features)
- [Installation](#-installation)
- [Quick Start](#-quick-start)
- [Usage Guide](#-usage-guide)
- [System Requirements](#-system-requirements)
- [Troubleshooting](#-troubleshooting)
- [License](#-license)
- [Credits](#-credits)

---

## 🎯 Features

### Account Management (10 Features)
✅ Login & Authentication with 2FA  
✅ Profile Name & Picture Updates  
✅ Bio/Status Management  
✅ Username Configuration  
✅ 2FA Status Viewing  
✅ Session Management  
✅ Contact List Management  

### Multi-Account Operations (8 Features)
✅ Mass Invite Across Accounts  
✅ Broadcast Messages Simultaneously  
✅ Join Groups (All Accounts)  
✅ Leave Groups (All Accounts)  
✅ Account Selection (Specific or All)  
✅ Sequential Processing  
✅ Auto-Generation (Names, Bios, Usernames)  
✅ File-Based Input Support  

### Proxy Management (3 Features)
✅ Add Multiple Proxies  
✅ List All Proxies  
✅ Auto-Rotation Support  

### Marketing Operations (10 Features)
✅ Auto-Post to Groups  
✅ Auto-React to Posts  
✅ Auto-Comment on Posts  
✅ Follow Recommendations  
✅ Channel Growth Analytics  
✅ Hashtag Management & Tracking  
✅ Trending Topics Tracker  
✅ Schedule Posts (Intervals)  
✅ Engagement Booster  
✅ Content Optimizer  

### Plus 70+ Additional Features!
Message operations, group management, reporting, user operations, session cloning, statistics, and more.

---

## 📥 Installation

### Requirements
- **Python 3.11** or **Python 3.12**
- **pip** (Python Package Manager)
- **2GB+ RAM**
- **Stable Internet Connection**
- **Telegram Account(s)**

### Step 1: Install Python

#### For Ubuntu/Debian:
```bash
# Update package manager
sudo apt update && sudo apt upgrade -y

# Install Python 3.11
sudo apt install python3.11 python3.11-venv -y

# Or install Python 3.12
sudo apt install python3.12 python3.12-venv -y

# Verify installation
python3.11 --version  # or python3.12 --version
```

#### For Windows:
1. Download Python from [python.org](https://www.python.org/downloads/)
2. Choose **Python 3.11** or **Python 3.12**
3. ✅ **Check: Add Python to PATH** during installation
4. Click Install
5. Verify:
```cmd
python --version
pip --version
```

#### For macOS:
```bash
# Using Homebrew
brew install python@3.11
# or
brew install python@3.12

# Verify
python3 --version
```

### Step 2: Clone/Download the Project

```bash
# Clone the repository
git clone https://github.com/yourusername/FULL-TG.git
cd FULL-TG

# Or extract ZIP file and navigate to folder
cd FULL-TG-main
```

### Step 3: Install Dependencies

```bash
# Create virtual environment (recommended)
python3.11 -m venv venv
# or for Python 3.12
python3.12 -m venv venv

# Activate virtual environment
# On Linux/macOS:
source venv/bin/activate
# On Windows:
venv\Scripts\activate

# Install required packages
pip install -r requirements.txt

# Verify installation
pip list
```

### Step 4: Configure API Keys

1. Go to [Telegram API](https://my.telegram.org)
2. Get your **API_ID** and **API_HASH**
3. Edit `config.py`:
```python
API_ID = 27184521  # Your API ID
API_HASH = "YOUR_API_HASH_HERE"  # Your API Hash
```

### Step 5: Run the Application

```bash
python app.py
# or
python3 app.py
```

---

## 🚀 Quick Start

### First Time Setup
```bash
1. Run: python app.py
2. Select Option 1 (Login Account)
3. Enter your phone: +1234567890
4. Confirm Telegram login
5. Enter 2FA code if required
6. Account logged in!
```

### Use Options 3-10: Profile Management
```bash
Option 3 - Change Profile Name
  → Select account(s)
  → Choose: Auto-generate / From file / Manual
  → Done!

Option 5 - Set Bio/Status
  → Same process as above
  → Auto-generated bios with emojis

Option 6 - Set Username
  → Auto-generated usernames or custom
  → Format: cooluser123, smartdev456, etc.
```

### Use Option 14: Mass Invite
```bash
Option 14 - Mass Invite
  → Target group: @groupname or group_link
  → Users file: users.txt (one username per line)
  → Per account: 50 (default)
  → Automatically joins group first
  → Then invites all users
```

### Use Options 96-105: Marketing
```bash
Option 96 - Auto-Post to Groups
  → Message: Your message text
  → Groups file: groups.txt
  → Posts to all groups automatically

Option 100 - Channel Growth Analytics
  → Select account(s)
  → View: Total dialogs, groups, contacts
  → Per-account statistics
```

---

## 📖 Usage Guide

### File Formats

#### users.txt (for mass invite)
```
@username1
@username2
username3
+1234567890
```

#### groups.txt (for posting/messaging)
```
@groupname
group_link
t.me/groupusername
Group Name
```

#### names.txt (for profile updates)
```
John Smith
Jane Doe
Alex Johnson
```

#### usernames.txt (for username setup)
```
cooluser123
smartdev456
techmaster789
```

#### bios.txt (for bio updates)
```
🚀 Entrepreneur | Tech Enthusiast
💻 Developer & Creator
🎯 Innovation Focused
```

### Account Selection

Most operations ask: **"Select (1-N or 'all'):"**
```
Example:
  1. +1234567890
  2. +9876543210
  3. +5555555555

Select: 1      → Process account 1 only
Select: all    → Process all accounts
Select: 1,3    → Process accounts 1 and 3
```

### Auto-Generation Modes

**Option 1: Auto-Generate**
- Creates random professional usernames
- Examples: "techmaster456", "cooluser789", "smartdev123"
- Bios with emojis from predefined set
- Realistic profile names

**Option 2: From File**
- Load data from text files
- One item per line
- Processed sequentially per account

**Option 3: Manual**
- Enter value manually
- Same value used for all accounts

---

## ⚙️ System Requirements

| Requirement | Minimum | Recommended |
|-------------|---------|-------------|
| **Python** | 3.11 | 3.12 |
| **RAM** | 2GB | 4GB+ |
| **Storage** | 500MB | 1GB |
| **Internet** | 1 Mbps | 10 Mbps |
| **OS** | Linux/Windows/macOS | Any |

---

## 🔒 Security & Best Practices

1. **Never Share API Keys**
   - Keep `config.py` private
   - Add to `.gitignore`

2. **Use Proxies for Large Operations**
   - Add proxies via Option 11
   - Prevents account bans
   - Rotates automatically

3. **Respect Rate Limits**
   - Don't invite 1000+ users at once
   - Use delays between operations
   - Spread actions across multiple accounts

4. **Account Safety**
   - Enable 2FA on Telegram
   - Use strong passwords
   - Regular session cleanup (Option 8)

5. **Session Management**
   - Sessions stored in `./sessions/` folder
   - Keep sessions secure
   - Clone sessions only when needed

---

## 🐛 Troubleshooting

### "No accounts found"
**Solution:** Login first with Option 1, then use other options

### "TimeoutError: Cannot connect"
**Solution:** 
- Check internet connection
- Try a different proxy (Option 11)
- Wait a few minutes and retry

### "Cannot access target"
**Solution:**
- Ensure group exists
- Verify you're a member
- Use correct group username/link

### "API Error: RATELIMIT"
**Solution:**
- Too many requests
- Add delays between operations
- Use multiple accounts
- Add proxies for rotation

### "2FA Code Issues"
**Solution:**
- Enter code within 5 minutes
- Check Telegram app for code
- Disable 2FA temporarily if issues persist

### "Session Database Locked"
**Solution:**
- Close other instances of the app
- Restart the application
- Check `./sessions/` folder

---

## 📚 Advanced Configuration

### Enable Multiple Proxies

Edit `config.py`:
```python
PROXIES = [
    {"ip": "1.1.1.1", "port": 8080, "user": "user1", "pass": "pass1"},
    {"ip": "2.2.2.2", "port": 9090, "user": "user2", "pass": "pass2"},
    {"ip": "3.3.3.3", "port": 8080},  # No auth
]
```

### Adjust Settings

```python
# Max accounts to run in parallel
MAX_PARALLEL_ACCOUNTS = 5

# Delay between operations (seconds)
BATCH_OPERATION_DELAY = 1

# Session folder location
FOLDER = "./sessions"

# Proxies file
PROXIES_FILE = "./proxies.json"
```

### Customize Auto-Generation

Edit the generation functions in `app.py`:
- `generate_username()` - Random usernames
- `generate_bio()` - Random bios
- `generate_profile_name()` - Random names

---

## 📊 Features by Category

### 🔑 Account Management (Options 1-10)
Login, Info, Profile, Picture, Bio, Username, 2FA, Sessions, Contacts

### 🔄 Proxy Management (Options 11-13)
Add, List, Rotate proxies

### 👥 Multi-Account (Options 14-18)
Mass Invite, Broadcast, Join Groups, Leave Groups, Show Accounts

### 💾 Sessions (Options 19-21)
Clone, List, Delete sessions

### 👤 User Operations (Options 22-30)
Full Info, Add Contact, Block, Unblock, Find, Mutual Friends, Last Seen, Followers, Channels

### 📱 Message Operations (Options 31-45)
Send DM, Send to Group, Reactions, Pin, Unpin, Search, Delete, Edit, Forward, Export, Stats, Link, Views, Clone, Analytics

### 📺 Group Operations (Options 46-60)
Info, Export Members, Count, Stats, Link, Title, Description, Member Info, Mute, Unmute, Kick, Make Admin, Remove Admin, Lock, Unlock

### 📖 Story Operations (Options 61-65)
View, Details, Post, Delete, React

### 🚨 Reporting (Options 66-75)
Report User, Group, Message, Clear Chat, Restrict, Mute Forever, Spam, Content, Bot, Scam

### 📊 Statistics (Options 76-82)
Dialog Count, Account Stats, Storage, Logs, Invite Stats, Proxy Stats, Device Info

### 🛠️ Utilities (Options 83-88)
View Logs, View Errors, Cleanup, History, Settings, About

### 📈 Marketing (Options 96-105)
Auto-Post, Auto-React, Auto-Comment, Follow, Analytics, Hashtags, Trending, Schedule, Engagement, Optimizer

### 🎁 Bonus Features (Options 107-111)
Send Stars, Send Gifts, Premium, Bulk Stars, Account Info, Create Groups

---

## 🔐 License

This project is licensed under the **Cryptolence License**. See `LICENSE` file for details.

---

## 👨‍💻 Credits

**Created by:** @Godmrunal & @HeyAnnex  
**Version:** 3.0  
**Status:** Production Ready  
**Last Updated:** December 21, 2024

---

## 📞 Support

- Check FAQ in troubleshooting section
- Review log files in `./` directory
- Check error messages in console

---

## ⚠️ Disclaimer

This tool is for **educational and personal use only**. Respect Telegram's Terms of Service. The creators are not responsible for misuse or account bans resulting from improper usage.

---

**Happy Automating! 🎉**
