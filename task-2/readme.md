This week's tasks are listed below. 

 1 : Develop a bash script to scan open ports of any machine. The output should be in the following format:

    port 22 of the host 142.250.67.174 is open.

 2: Develop a bash script to monitor the network and create a monitoring log in the format given below.

    20/05/2022 : ping failed, 142.250.67.174 host is {up/down}!

 3 : Develop a curl command to find all the users and collect all the usernames.

 4 : Write a curl command to post each username and get the respective user token.

 5 : Create a curl command that a user token as input and give the id of that specific user. 

     Similarly collect all the userid's and create a list in the format below:

     {"abhay": "135", "aviram": "152"}

What to do for the tasks 3, 4 and 5 is outlined below:

 👉 Send GET request to Base URL - http://gincy.pythonanywhere.com. Base URL is kind of like the base address for the specific API and find all the API's 
 
 👉 You can find 3 API's Endpoint in the response of the previous request : /getusers, /login, /getid. End point of entry” in an API. Use the each API endpoint to append the api base url to generate requests
 
 👉 Send GET request to /getusers will get all the users in the response
 
 👉 Send POST request to /login with a username by giving "username" parameter in the body, in the format of:
 "username": "abhay",
 will give a token for the user in the response
 
 👉 Send GET request to /getid with the Authorization header is set to the user token in the format like,
 "Authorization: <USER_TOKEN>"
 
 👉 Repeat the process for all users and collect the userid of all users
 
 👉 Push all the curl commands to GitHub as a txt file or bash script in such a way that each team has its own sub-directory inside the task-2 directory just like the previous task; otherwise, it will not be accepted,
 
 👉 Make a pull request to the source repository; we will use this pull request to evaluate your code.

Task points will be assigned based on the code's readability; it is preferable if every team member contributes. Because this is a group activity, it would be better if you could collaborate by meeting in person or virtually for a better outcome.

The deadline for submitting the task is 27 My 2023 Friday, 11:59 PM. IST

You can also post images of your group meetups here.