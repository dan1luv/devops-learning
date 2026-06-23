#!/bin/bash
echo "Запускаю бэкап..."
mkdir -p ~/devops-learning/backups
cp week-01/notes.txt ~/devops-learning/backups/notes-backup-$(date +%F).txt
echo "Готово!"
ls ~/devops-learning/backups/
