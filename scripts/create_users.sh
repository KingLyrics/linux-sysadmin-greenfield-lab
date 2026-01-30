if ! sudo -n true 2 > dev/null; then
    echo "Error: This script requires sudo privileges."
    exit 1
fi

echo "Sudo access confirmed. Beginning Script..."


# sudo -n: Runs in non-interactive mode. 
# if !: If not true/not sudo user then echo Error
# 2>/dev/null: Redirects standard error to keep output clean



#check if the file was passed into the scipt
if [ -z "$1"]; then
    echo "Please pass the file parameter"
    exit 1
fi

# first line checs if first argument is empty
# echos out error