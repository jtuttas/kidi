#!/bin/bash

# Setze die URL des Git-Repositories und das Zielverzeichnis
REPO_URL="https://github.com/dein-benutzername/dein-repository.git"
TARGET_DIR="/pfad/zu/deinem/verzeichnis"

# Überprüfe, ob das Verzeichnis existiert
if [ -d "$TARGET_DIR" ]; then
  echo "Verzeichnis existiert. Führe git pull aus."
  cd "$TARGET_DIR"
  git pull
else
  echo "Verzeichnis existiert nicht. Klone das Repository."
  git clone "$REPO_URL" "$TARGET_DIR"
fi
