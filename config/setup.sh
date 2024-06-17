#!/bin/bash

# Setze die URL des Git-Repositories und das Zielverzeichnis
REPO_URL="https://github.com/jtuttas/kidi.git"
TARGET_DIR="/home/tuttas/kidi"

# Setze das Home-Verzeichnis
export HOME="/root"

# Überprüfe, ob das Verzeichnis existiert
if [ -d "$TARGET_DIR" ]; then
  echo "Verzeichnis existiert. Führe git pull aus."
  cd "$TARGET_DIR"
  git config --global --add safe.directory "$TARGET_DIR"
  git pull
else
  echo "Verzeichnis existiert nicht. Klone das Repository."
  git clone "$REPO_URL" "$TARGET_DIR"
fi


# Benutzername und Passwort
username="schueler1"
password="kidi"

# Benutzer löschen
sudo userdel -r $username

# Benutzer neu anlegen
sudo useradd -m -s /bin/bash $username

# Passwort setzen
echo "$username:$password" | sudo chpasswd

# Benutzer zu zusätzlichen Gruppen hinzufügen (falls nötig)
# sudo usermod -aG group1,group2 $username

echo "Benutzer $username wurde gelöscht, neu angelegt und das Passwort gesetzt."


cp -r "$TARGET_DIR"/notebooks/* /home/schueler1/