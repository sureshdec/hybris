echo "Copy Zip Files"

ssh ubuntu@18.208.12.142 << EOF
cd /opt/files/sib/repo
rm -rf eCommercehybris*
rm -rf hybrisdev*
EOF
scp /opt/files/sib/repo/eCommercehybris.zip ubuntu@18.208.12.142:/opt/files/sib/repo/
scp /opt/files/sib/repo/config.zip ubuntu@18.208.12.142:/opt/files/sib/repo/

ssh ubuntu@18.208.12.142<< EOF
cd /opt/files/sib/repo
7z  x eCommercehybris.7z
7z  x hybrisdev.7z
EOF
