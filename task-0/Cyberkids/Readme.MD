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
Vulnerabilities found for server-side software
Risk Level: High

Risk description
These vulnerabilities expose the affected applications to the risk of unauthorized access to confidential data and possibly to denial of service attacks. An attacker could search for an appropriate exploit (or create one himself) for any of these vulnerabilities and use it to attack the system.

Recommendation
It is recommended to upgrade the affected software to the latest version in order to eliminate the risk of these vulnerabilities.

Example of Vulnerability found: 
1) CVE-2017-8923

The zend_string_extend function in Zend/zend_string.h in PHP through 7.1.5 does not prevent changes to string objects that result in a negative length, which allows remote attackers to cause a denial of service (application crash) or possibly have unspecified other impact by leveraging a script's use of .= with a long string.

2) CVE-2015-9253

An issue was discovered in PHP 7.3.x before 7.3.0alpha3, 7.2.x before 7.2.8, and before 7.1.20. The php-fpm master process restarts a child process in an endless loop when using program execution functions (e.g., passthru, exec, shell_exec, or system) with a non-blocking STDIN stream, causing this master process to consume 100% of the CPU, and consume disk space with a large volume of error logs, as demonstrated by an attack by a customer of a shared-hosting facility.

3) CVE-2022-31629	

In PHP versions before 7.4.31, 8.0.24 and 8.1.11, the vulnerability enables network and same-site attackers to set a standard insecure cookie in the victim's browser which is treated as a `__Host-` or `__Secure-` cookie by PHP applications.

4) CVE-2017-7272	

PHP through 7.1.11 enables potential SSRF in applications that accept an fsockopen or pfsockopen hostname argument with an expectation that the port number is constrained. Because a :port syntax is recognized, fsockopen will use the port number that is specified in the hostname argument, instead of the port number in the second argument of the function.

