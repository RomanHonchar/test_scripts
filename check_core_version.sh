#!/bin/bash

# Check if lscpu command exists
if ! command -v lscpu &> /dev/null; then
    echo "Error: lscpu command not found. Make sure lscpu is installed."
    exit 1
fi

# Get CPU information
cpu_info=$(lscpu)

# Extract CPU core version
core_version=$(echo "$cpu_info" | grep "Model name:" | cut -d ":" -f 2 | awk '{$1=$1;print}')

# Display CPU core version
echo "CPU Core Version: $core_version"
