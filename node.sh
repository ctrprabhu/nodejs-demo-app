apt-get update -y
apt-get install curl -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source /root/.bashrc
echo $NVM_DIR
