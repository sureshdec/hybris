echo "Make Zip Files"
cd bin
7z a eCommercehybris.7z custom
mv eCommercehybris.7z  /opt/files/sib/repo/
cd ../envconfigs
7z a hybrisdev.7z hybrisdev
mv hybrisdev.7z /opt/files/sib/repo/
