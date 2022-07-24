#!/usr/bin/env bash

curl -X GET http://gincy.pythonanywhere.com/ -H "Accept: */*"
echo
echo "==========================================================================="

# Task 3
curl -X GET http://gincy.pythonanywhere.com/getusers -H "Accept: */*"



echo
echo "==========================================================================="



#  Task 4
echo "User vinay : "
curl -X POST http://gincy.pythonanywhere.com/login -H "Authorization: "username":"vinay"," -H "Content-Type: application/json" --data-binary @- <<DATA
{
    "username":"vinay"
}
DATA

echo "---------------------------------------------------------------------------"

echo "User johan : "
curl -X POST http://gincy.pythonanywhere.com/login -H "Authorization: "username":"johan"," -H "Content-Type: application/json" --data-binary @- <<DATA
{
    "username":"johan"
}
DATA

echo "---------------------------------------------------------------------------"

echo "User alice : "
curl -X POST http://gincy.pythonanywhere.com/login -H "Authorization: "username":"alice"," -H "Content-Type: application/json" --data-binary @- <<DATA
{
    "username":"alice"
}
DATA


echo
echo "==========================================================================="



echo "User vinay : "
curl -X GET http://gincy.pythonanywhere.com/getid -H "Accept: */*" -H "Authorization: "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoidmluYXkiLCJpZCI6NCwiZXhwIjoxNzAzOTQ5NDc5fQ.-7GoR85YvyoZbfhP5PjdX3RyeMrpmvCa8N0i9bXqvm8""

echo "---------------------------------------------------------------------------"

echo "User johan : "
curl -X GET http://gincy.pythonanywhere.com/getid -H "Accept: */*" -H "Authorization: "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoiam9oYW4iLCJpZCI6NCwiZXhwIjoxNzAzOTQ5NDc5fQ.UFV_KQu1UGReoBzZ9QiJIcTa6XfZm1OnXoypLlb8icg""

echo "---------------------------------------------------------------------------"

echo "User alice : "
curl -X GET http://gincy.pythonanywhere.com/getid -H "Accept: */*" -H "Authorization: "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoiYWxpY2UiLCJpZCI6NCwiZXhwIjoxNzAzOTQ5NDc5fQ.av8RVoE3oZhK70238Gd43EzOYHsldnYTiyupJpSUlVU""






# LOG_FILE="../access.log"
# read -rp "Enter an IP (Pressing enter uses 42.236.10.125): " input
# input=${input:-"42.236.10.125"}
# function ipdetail () {
#     local givenIp="$1"

#     while read -r line; do
#         ip=$(echo "$line" | awk '{print $1}')
#         if [[ "${givenIp}" == "${ip}" ]]; then
#             echo "$line"
#             echo "--------------------------------------------------------------------------------------"
#         fi

#     done < $LOG_FILE

# }
# ipdetail "${input}"
