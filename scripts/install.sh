#!/bin/bash

# FULL-TG v3.0 - Linux/macOS Installation Script
# This script automates the installation process

set -e  # Exit on error

echo "════════════════════════════════════════════════"
echo "  FULL-TG v3.0 - Installation Script (Linux/macOS)"
echo "════════════════════════════════════════════════"
echo ""

# Color output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if Python is installed
echo -e "${YELLOW}[1/5]${NC} Checking Python installation..."
if ! command -v python3.11 &> /dev/null && ! command -v python3.12 &> /dev/null; then
    echo -e "${RED}✗ Error: Python 3.11 or 3.12 not found${NC}"
    echo ""
    echo "Install Python 3.11 or 3.12:"
    echo "  Ubuntu/Debian: sudo apt install python3.11 python3.11-venv"
    echo "  macOS: brew install python@3.11"
    echo ""
    exit 1
fi

# Detect Python version
if command -v python3.12 &> /dev/null; then
    PYTHON_CMD="python3.12"
    PYTHON_VERSION="3.12"
elif command -v python3.11 &> /dev/null; then
    PYTHON_CMD="python3.11"
    PYTHON_VERSION="3.11"
fi

echo -e "${GREEN}✓ Found Python ${PYTHON_VERSION}${NC}"
echo ""

# Create virtual environment
echo -e "${YELLOW}[2/5]${NC} Creating virtual environment..."
if [ -d "venv" ]; then
    echo -e "${YELLOW}→${NC} Virtual environment already exists. Skipping..."
else
    $PYTHON_CMD -m venv venv
    echo -e "${GREEN}✓ Virtual environment created${NC}"
fi
echo ""

# Activate virtual environment
echo -e "${YELLOW}[3/5]${NC} Activating virtual environment..."
source venv/bin/activate
echo -e "${GREEN}✓ Virtual environment activated${NC}"
echo ""

# Upgrade pip
echo -e "${YELLOW}[4/5]${NC} Upgrading pip..."
pip install --upgrade pip > /dev/null 2>&1
echo -e "${GREEN}✓ pip upgraded${NC}"
echo ""

# Install requirements
echo -e "${YELLOW}[5/5]${NC} Installing dependencies..."
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
    echo -e "${GREEN}✓ Dependencies installed${NC}"
else
    echo -e "${RED}✗ requirements.txt not found${NC}"
    exit 1
fi
echo ""

# Create sessions folder
mkdir -p sessions logs
echo -e "${GREEN}✓ Created sessions and logs folders${NC}"
echo ""

# Final instructions
echo "════════════════════════════════════════════════"
echo -e "${GREEN}✓ Installation Complete!${NC}"
echo "════════════════════════════════════════════════"
echo ""
echo "📋 Next Steps:"
echo ""
echo "1. Edit config.py with your Telegram API credentials:"
echo "   - API_ID: Get from https://my.telegram.org"
echo "   - API_HASH: Get from https://my.telegram.org"
echo ""
echo "2. Run the application:"
echo "   source venv/bin/activate"
echo "   python app.py"
echo ""
echo "3. Select Option 1 to login your first account"
echo ""
echo "📚 Documentation:"
echo "   - README.md - Feature list and usage guide"
echo "   - INSTALLATION.md - Detailed installation steps"
echo "   - LICENSE.md - License and legal information"
echo ""
echo "🆘 Troubleshooting:"
echo "   - Python not found? Install Python 3.11 or 3.12"
echo "   - Module not found? Run: pip install -r requirements.txt"
echo "   - Permission denied? Run: chmod +x install.sh"
echo ""
echo "Happy Automating! 🚀"
echo ""
