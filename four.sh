#!/bin/bash

# 📍 Détection de l'IP locale
IP=$(ip a | grep inet | grep wlan0 | awk '{print $2}' | cut -d/ -f1)

# 🌐 Port utilisé
PORT=8080

# 🔊 Affichage de l'URL
echo "🚀 Fournilo Web lancé sur : http://$IP:$PORT"

# 📸 Génération du QR code (si qrencode est installé)
if command -v qrencode &> /dev/null; then
    qrencode -o fournilo_qr.png "http://$IP:$PORT"
    echo "📱 QR code généré : fournilo_qr.png"
    xdg-open fournilo_qr.png &> /dev/null
else
    echo "⚠️ qrencode non installé. Tu peux l'ajouter avec : sudo pacman -S qrencode"
fi

# 🧠 Lancement du serveur Flutter Web
flutter run -d web-server --web-hostname=0.0.0.0 --web-port=$PORT
