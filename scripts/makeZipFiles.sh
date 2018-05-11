echo "Make Zip Files"
rm -rf eCommercehybris.7z
rm -rf hybrisdev.7z
cd bin/
7z a eCommercehybris.7z custom
mv eCommercehybris.7z  /opt/files/sib/repo/
cd ../envconfigs
7z a hybrisdev.7z hybrisdev
mv hybrisdev.7z /opt/files/sib/repo/
