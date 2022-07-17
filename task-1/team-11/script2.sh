cd ..
grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" $(find -name access.log) | sort --unique
