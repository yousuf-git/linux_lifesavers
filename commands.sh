# Here is the list of general commands that are suitable for daily use of ubuntu - Most of the problems are those which I faced personally

# If any desktop icon is not being shown
sudo update-desktop-database

# Get connected wifi information
iwconfig

# Start Mongodb if stopped
sudo systemctl start mongod

# Information such as the SSID, frequency, and signal strength
nmcli -t -f ACTIVE,SSID,CHAN,RATE,SIGNAL,BARS,FREQ device wifi

# IP address details and more...
sudo apt-get install net-tools
curl ifconfig

# List all files in curr dir with permissions, size and more
ls -lah

# Forcefully deleting a file
sudo rm -f <file_name>
# or
sudo rm -rf <dir_name>				# try / as dir name if you don't love yourself :)
