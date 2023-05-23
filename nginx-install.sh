echo "apt-get update..."

sudo apt-get update -y 1> /dev/null

echo "nginx install..."

sudo apt-get install nginx -y 1> /dev/null

echo "nginx install done!"

sudo nginx -v
