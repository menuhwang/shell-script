echo "apt-get update..."

sudo apt-get update -y 1> /dev/null

echo "apt-get update done!"

echo "install libraries..."

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y 1> /dev/null

echo "install done!"

echo "registry key"

mkdir -p /etc/apt/keyrings 1> /dev/null
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg 1> /dev/null

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


echo "apt-get update..."

sudo apt-get update -y 1> /dev/null

echo "apt-get update done!"

echo "Docker install..."

sudo apt-get install docker-ce docker-ce-cli containerd.io -y 1> /dev/null

echo "Docker install done!"
