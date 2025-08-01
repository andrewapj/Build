#!/usr/bin/env zsh

#
# A Zsh script to find and terminate a process using a specific port.
#
# Usage:
#   ./kill-port.sh <port_number>
#
# Example:
#   ./kill-port.sh 8080
#

# --- Argument Validation ---
# Check if a port number was provided as the first argument.
# If not, print a usage message and exit with an error code.
if [[ -z "$1" ]]; then
  echo "Error: No port number provided."
  echo "Usage: $0 <port_number>"
  exit 1
fi

# Store the port number from the first argument in a variable.
PORT=$1

# --- Find Process ID (PID) ---
# Use 'lsof' (list open files) to find the process ID using the specified port.
#   -i :$PORT : Looks for processes on the given TCP/IP port.
#   -t         : Terse output, which prints only the PID.
#   -sTCP:LISTEN : Filters for processes that are in the LISTEN state.
echo "Searching for process using port ${PORT}..."
PID=$(lsof -i :${PORT} -sTCP:LISTEN -t)

# --- Kill Process ---
# Check if the PID variable is not empty (i.e., a process was found).
if [[ -n "$PID" ]]; then
  echo "Process found with PID: ${PID}"
  echo "Terminating process ${PID} with kill -9..."
  
  # Use 'kill -9' to forcefully terminate the process.
  kill -9 ${PID}
  
  echo "Process ${PID} terminated."
else
  # If no PID was found, inform the user.
  echo "No process found using port ${PORT}."
fi


