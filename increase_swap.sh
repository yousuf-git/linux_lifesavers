# Turn swap off
# This moves stuff in swap to the main memory and might take several minutes
sudo swapoff -a

# Create an empty swapfile
# Note that "1M" is basically just the unit and count is an integer.
# Together, they define the size. In this case 8GiB.
sudo dd if=/dev/zero of=/swapfile bs=1M count=8192

# Set the correct permissions
sudo chmod 0600 /swapfile       # 0600 is the owner's permission

sudo mkswap /swapfile  # Set up a Linux swap area
sudo swapon /swapfile  # Turn the swap on