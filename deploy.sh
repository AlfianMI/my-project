#!/bin/bash

# Menentukan variabel
LOG_DIR="/var/log"
TARGET_HOST="google.com"

echo "=== System Health Check ==="
echo "Tanggal & Waktu: $(date)"

# Checking Disk Usage
echo -e "\n1. Pemakaian Disk Storage:"
df -h /

# Checking Connectivity
echo -e "\n2. Pengujian Koneksi ke $TARGET_HOST:"
if ping -c 2 $TARGET_HOST > /dev/null 2>&1; then
    echo "[OK] Terkoneksi Internet."
else
    echo "[ERROR] Tidak dapat terhubung ke internet!"
fi
