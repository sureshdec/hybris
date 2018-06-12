echo "Install Hybris Commerce"
ssh ####@###### << EOF
cd /opt/hybris/
rm -rf *
unzip /opt/downloads/hybris-commerce-suite-6.4.0.0.zip

cd /opt/hybris/bin/platform/
. ./setantenv.sh
ant clean all

cd /opt/hybris/installer
./install.sh -r b2c_b2b_acc
#./install.sh -r b2c_acc initialize
cd /opt/hybris/current/hybris/bin/platform/

ant clean all
ant initialize
curl https://localhost:9002/yacceleratorstorefront/en/?site=apparel-uk
EOF
