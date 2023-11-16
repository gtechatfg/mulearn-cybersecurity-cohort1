# Task - 0
Conduct a web application vulnerability assessment on http://testphp.vulnweb.com/ and create a report documenting identified vulnerabilities and their potential impact. 
### I. Vulnerability Summary
Burp Suite Community Edition was employed to assess the security of a web application. The analysis revealed a significant vulnerability: SQL Injection and Authentication Bypass. These vulnerabilities could potentially lead to unauthorized access and compromise sensitive user data.
### Description

SQL injection vulnerabilities arise when user-controllable data is incorporated into database SQL queries in an unsafe manner. An attacker can supply crafted input to break out of the data context in which their input appears and interfere with the structure of the surrounding query.

A wide range of damaging attacks can often be delivered via SQL injection, including reading or modifying critical application data, interfering with application logic, escalating privileges within the database and taking control of the database server.
1. **Reproduction:**
    
    - Submitting payloads like "1 and 1=1" and "' OR 1=1--" in the login credentials resulted in successful authentication bypass.
    - Submitting the payload `<username>'--` in the username field granted access without the need for a valid password.
    - The payloads manipulated the SQL query, allowing unauthorized access to the application.
### Screenshots
<img title="Screenshots" alt="Request image" src="/images/Requests.png">
<img title="Output" alt="Raw output" src="/images/SQL.png">
<img title="Rendered output" alt="Rendered" src="/images/Rendered.png">

### Remediation

The most effective way to prevent SQL injection attacks is to use parameterized queries (also known as prepared statements) for all database access. This method uses two steps to incorporate potentially tainted data into SQL queries: first, the application specifies the structure of the query, leaving placeholders for each item of user input; second, the application specifies the contents of each placeholder. Because the structure of the query has already been defined in the first step, it is not possible for malformed data in the second step to interfere with the query structure. You should review the documentation for your database and application platform to determine the appropriate APIs which you can use to perform parameterized queries. It is strongly recommended that you parameterize _every_ variable data item that is incorporated into database queries, even if it is not obviously tainted, to prevent oversights occurring and avoid vulnerabilities being introduced by changes elsewhere within the code base of the application.

You should be aware that some commonly employed and recommended mitigations for SQL injection vulnerabilities are not always effective:

- One common defense is to double up any single quotation marks appearing within user input before incorporating that input into a SQL query. This defense is designed to prevent malformed data from terminating the string into which it is inserted. However, if the data being incorporated into queries is numeric, then the defense may fail, because numeric data may not be encapsulated within quotes, in which case only a space is required to break out of the data context and interfere with the query. Further, in second-order SQL injection attacks, data that has been safely escaped when initially inserted into the database is subsequently read from the database and then passed back to it again. Quotation marks that have been doubled up initially will return to their original form when the data is reused, allowing the defense to be bypassed.
- Another often cited defense is to use stored procedures for database access. While stored procedures can provide security benefits, they are not guaranteed to prevent SQL injection attacks. The same kinds of vulnerabilities that arise within standard dynamic SQL queries can arise if any SQL is dynamically constructed within stored procedures. Further, even if the procedure is sound, SQL injection can arise if the procedure is invoked in an unsafe manner using user-controllable data.

### References

- [Web Security Academy: SQL injection](https://portswigger.net/web-security/sql-injection)
- [Using Burp to Test for Injection Flaws](https://support.portswigger.net/customer/portal/articles/1965677-using-burp-to-test-for-injection-flaws)
- [Web Security Academy: SQL Injection Cheat Sheet](https://portswigger.net/web-security/sql-injection/cheat-sheet)

### Vulnerability classifications

- [CWE-89: Improper Neutralization of Special Elements used in an SQL Command ('SQL Injection')](https://cwe.mitre.org/data/definitions/89.html)
- [CWE-94: Improper Control of Generation of Code ('Code Injection')](https://cwe.mitre.org/data/definitions/94.html)
- [CWE-116: Improper Encoding or Escaping of Output](https://cwe.mitre.org/data/definitions/116.html)
- [CAPEC-66: SQL Injection](https://capec.mitre.org/data/definitions/66.html)

### Typical severity

High

### Type index

0x00100200
