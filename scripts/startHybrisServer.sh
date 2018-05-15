echo "Start Hybris Server"
ssh ubuntu@18.208.12.142 << EOF
sudo -s
whoami
cd /etc/hybris/hybris/bin/platform
. ./setantenv.sh
./hybrisserver.sh start
EOF
