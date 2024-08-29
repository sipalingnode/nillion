echo -e "\033[0;35m"
echo "====================================================="
echo "                  AIRDROP ASC                        "
echo "====================================================="
echo -e '\e[35mNode :\e[35m' Nillion Verifier
echo -e '\e[35mTelegram Channel :\e[35m' @airdropasc
echo -e '\e[35mTelegram Group :\e[35m' @autosultan_group
echo "====================================================="
echo -e "\e[0m"

sleep 5

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" && sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

sleep 5

docker pull nillion/retailtoken-accuser:v1.0.0

sleep 5

mkdir -p nillion/accuser

sleep 3

docker run -v ./nillion/accuser:/var/tmp nillion/retailtoken-accuser:v1.0.0 initialise

echo -e "\033[0;35m"
echo "Done.... Backup your wallet 'sudo cat /root/nillion/accuser/credentials.json' "
echo -e "\e[0m"
