# We can see if the system has any configured swap by typing:
sudo swapon --show

# You can verify that there is no active swap using the free utility:
free -h

# Swap:            0B          0B          0B

# Before we create our swap file, we’ll check our current disk usage to make sure we have enough space. Do this by entering:

df -h

# Step 3 – Creating a Swap File

# I will create a 1G file in this guide. Adjust this to meet the needs of your own server:
sudo fallocate -l 1G /swapfile

# We can verify that the correct amount of space was reserved by typing:
ls -lh /swapfile

# $ -rw-r--r-- 1 root root 1.0G Apr 25 11:14 /swapfile

# Step 4 – Enabling the Swap File

# Make the file only accessible to root by typing:
sudo chmod 600 /swapfile

# Verify the permissions change by typing:
ls -lh /swapfile

# Output
# -rw------- 1 root root 1.0G Apr 25 11:14 /swapfile

# We can now mark the file as swap space by typing:
sudo mkswap /swapfile

# Output
# Setting up swapspace version 1, size = 1024 MiB (1073737728 bytes)
# no label, UUID=6e965805-2ab9-450f-aed6-577e74089dbf

# Allowing our system to start swap file:
sudo swapon /swapfile

# Verify that the swap is available by typing:
# sudo swapon --show

# Output
# NAME      TYPE  SIZE USED PRIO
# /swapfile file 1024M   0B   -2

# Reference: https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-22-04



