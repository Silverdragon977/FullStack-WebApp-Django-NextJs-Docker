#!/bin/bash

echo "🚀 Setting up local dev environment..."

DOMAIN="django-app.test"
HOSTS_LINE="127.0.0.1 $DOMAIN"

# Check if already exists
if grep -q "$DOMAIN" /etc/hosts; then
    echo "✅ Hosts entry already exists"
else
    echo "🔧 Adding $DOMAIN to /etc/hosts (requires sudo)..."
    echo "$HOSTS_LINE" | sudo tee -a /etc/hosts > /dev/null
    echo "✅ Added to /etc/hosts"
fi

echo ""
echo "🐳 Starting Docker containers..."
docker compose up -d --build

echo ""
echo "🌐 Opening browser..."

# Linux / WSL compatible
if command -v xdg-open > /dev/null; then
    xdg-open http://$DOMAIN:8002
elif command -v wslview > /dev/null; then
    wslview http://$DOMAIN:8002
else
    echo "👉 Open manually: http://$DOMAIN:8002"
fi

echo ""
echo "🎉 Setup complete!"
