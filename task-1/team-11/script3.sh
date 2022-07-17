
echo "Enter the IP Adress: "
read ip
cd ..
grep -r $ip  $(find -name access.log)
