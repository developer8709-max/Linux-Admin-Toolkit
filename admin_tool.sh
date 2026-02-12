#!/bin/bash

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"

while true
do
clear 2>/dev/null

echo "=================================="
echo "      Linux Admin Toolkit"
echo "=================================="
echo "1. System information"
echo "2. User management"
echo "3. Service management"
echo "4. Backup directory"
echo "5. Exit"
echo

read -p "Select option: " opt

case "$opt" in
1)
bash "$BASE_DIR/scripts/system_info.sh"
;;
2)
bash "$BASE_DIR/scripts/user_manage.sh"
;;
3)
bash "$BASE_DIR/scripts/service_manage.sh"
;;
4)
bash "$BASE_DIR/scripts/backup.sh"
;;
5)
exit 0
;;
*)
echo "Invalid option"
sleep 1
;;
esac
done
