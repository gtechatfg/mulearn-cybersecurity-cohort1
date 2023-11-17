# Task - 0
Conduct a web application vulnerability assessment on http://testphp.vulnweb.com/ and create a report documenting identified vulnerabilities and their potential impact. 

# Vulnerability 1
Vulnerable to SQL Injection
Risk Level: High

SQL injection was used to test for website vulnerability. It appears that there is a vulnerability due to the GET parameter that is exposed. This results in it being vulnerable to the mode of SQL Injection. Using this, an attacker may be able to access the databases and the information it contains.

I did a simple test by changing the parameter of GET in the link and replace it with an *. This results in an error. As such, we can conclusively conclude that there is a vulnerability in the website.

http://testphp.vulnweb.com/listproducts.php?cat=* 


# Vulnerability 2
Missing security header: X-Frame-Options
Risk Level: Low

Risk description
Because the `X-Frame-Options` header is not sent by the server, an attacker could embed this website into an iframe of a third party website. By manipulating the display attributes of the iframe, the attacker could trick the user into performing mouse clicks in the application, thus performing activities without user consent (ex: delete user, subscribe to newsletter, etc). This is called a Clickjacking attack!

Recommendation
it is recommended that you add the `X-Frame-Options` HTTP header with the values `DENY` or `SAMEORIGIN` to every page that you want to be protected against Clickjacking attacks.

# Vulnerability 3
Communication is not secure
Risk Level: Medium

Risk description
The communication between the web browser and the server is done using the HTTP protocol, which transmits data unencrypted over the network. Thus, an attacker who manages to intercept the communication at the network level is able to read and modify the data transmitted (including passwords, secret tokens, credit card information and other sensitive data).

Recommendation
It is recommended that you reconfigure the web server to use HTTPS - which encrypts the communication between the web browser and the server.

# Vulnerability 4
Insecure client access policy
Risk Level: Medium

Risk description
The `crossdomain.xml` file controls the access of externally hosted Flash scripts to this website. The external websites which are permitted to read content from this website via Flash are specified in the XML tag `<allow-access-from>`. If the value of this tag is too permissive (ex. wildcard), it means that any Flash script from an external website could access content from this website, including confidential information of users. The `clientaccesspolicy.xml` file specifies that other websites can read content from this website - which is normally denied by the Same Origin Policy. If the allowed domains are too permissive (ex. wildcard) then any external website will be able to read content (including sensitive information) from this website. Flash is not supported anymore and this poses a risk only if the user's clients use older browsers, making them vulnerable to their information being accessed by a malicious external Flash script.

Recommendation
We recommend to carefully review the content of the policy file and permit access only for legitimate domains.

# Vulnerability 5