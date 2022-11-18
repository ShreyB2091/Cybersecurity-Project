# **TASK 1**

## HTTP
HTTP stands for Hyper Text Transfer Protocol. It defines a set of rules which help in communicating between clients and Web Servers through mediums like images, videos, HTML etc. It uses hypertext links to load webpages.

## HTTPS
HTTPS stands for Hyper Text Transfer Protocol Secure. It is a secure version of HTTP. The data shared over HTTPS is encrypted so it prevents others from spying on our data. It also guarantees the authenticity of the Web Server.

## URL
URL stands for Uniform Resource Locator. It is a unique identifier used to access a Web Page or any other resource on the internet.
A basic structure of a URL looks like
```
https://user:password@abcxyz.com:443/blog?id=3917845#task1
```
It consists of :
1. Scheme (https) - It tells the protocol used to access the resource, for eg. HTTP, HTTPS, FTP, TCP, IP etc.
2. User (user:password) - It gives the username and password which may be needed to log in to the URL.
3. Host/Domain (abcxyz.com) - Domain Name or IP Address of the main server whose resources are being accessed.
4. Port (443) - It receives or transmits communication for a specific service.
5. Path (/blog) - It specifies the location of the resource being accessed.
6. Query String (?id=3917845) - This is the extra information sent to the requested path.
7. Fragment (#task1) - It is a reference to a location generally used in pages with long content.

## HTTP Request
An HTTP Request is a way of communication between Clients and Servers where a client requests to access some resource on the server.

A general Request contains:
```
<Request Method> <Location on page to be accessed> <HTTP Version>
Host: <Host Name>
User-Agent: <Web Browser version used by client>
Accept: <Content types clients can understand>
Accept-Encoding: <Compression methods supported by browser>
Referer: <Webpage being refered to>
Content-Length: <Size of data expected>
Cookie: <Data sent to remember the user>
(A blank line indicating the end of reequest)
{
    <Request message body>
}
```

An example of a Request is:
```
GET /doc/test.html HTTP/1.1
Host: https://abcxyz.com
User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36
Accept: image/gif, image/jpeg, */*
Accept-Encoding: gzip
Referer: https://acbxyz.com
Content-Length: 10
Cookie: user=AZ

bookId=835
```

## HTTP Response
An HTTP Response is the information recieved by the client browsers an an answer to an HTTP Request.

A general Response contains:
```
<HTTP Protocol Version> <Status Code>
Server: <Server software and version>
Date: <Date and Timezone at the time of request>
Content-Type: <Type of data returned>
Content-Encoding: <Compression methods used>
Content-Length: <Length of the Response>
Set-Cookie: <Cookie Info>
(A blank line indicating the end of response)
{
    <Content of the Webpage>
}
```

An example of a request is:
```
HTTP/1.1 200 OK
Server: Apache/1.3.29 (Win32)
Date: Sat, 29 Feb 2004 00:34:41 GMT
Content-Type: text/html
Content-Encoding: gzip
Content-Length: 30

<h1>My Home Page</h1>
```

## HTTP Methods
An HTTP Method indicates the action that a HTTP Request expects from the Web Server.

Some common Methods are:
- GET : Used to request data from a server.
- POST : Used to add / append data to a server.
- PUT : Used to update existing resource on a server.
- DELETE : Used to delete a record from a server.

## HTTP Status Codes
An HTTP status code is a server response to a browser's request.

| Status Code | Description |
| :---: | :---: |
|100-199 (Information Response)|It tell the client the first part of their request has been accepted|
|200-299 (Success)|It tells the client the request was successful|
|300-399 (Redirection)|It redirects client's request to another webpage or website|
|400-499 (Client Errors)|It tells the client about the nature of error in their request|
|500-599 (Server Errors)|It indicates an error in the server to handle the request|
|200-OK|It indicates the successful completion of a request|
|201-Created|It tells a resource has been added to the server|
|301-Permanent Redirect|It tells the client that the page has been moved and redirects to another webpage|
|302-Temporary Redirect|It suggests temporary change in the location of the webpage|
|400-Bad Request|It tells that something was missing from the request that the server was expecting|
|401-Not Authorized|Username and password is required to access this resource|
|403-Forbidden|No permission to view the resource|
|404-Not Found|The page or resource doesn't exist|
|500-Internal Service Error|There was some error with the request and server cannot handle it properly|
|503-Service Unavailable|The server is overloaded or down for maintenance|

## Cookies
Cookies are information about the user that is used to remember the user on further visits to the site. Since HTTP doesn't keep track of previous requests, cookies are used to remember things like personal settings, user information etc.

## DNS
DNS stands for Domain Name System. Every computer on a network has its own unique address which is used to communicate with it. This is called IP Address. It consists of 4 sets of digits (between 0 and 255) like 169.43.3.123. This can be difficult to remember hence we use a DNS which sets a domain name to each IP Address.

## Domain Hierarchy
1. Top Level Domain (TLD) : It is is the most righthand part of a domain name like .com. There are two types of TLD -
    - gTLD - It stands for generic TLD. It tells the purpose of the domain name. For example .com (commercial), .gov (government), .edu (education) etc.
    - ccTLD - It stands for country code TLD. It tells the geographic location of the domain name. For example .ca (Canada), .co.in (India) etc.
1. Second Level Domain : In abcxyz.com abcxyz is the second level domain. It can contain only upto 63 characters from a-z, 0-9 and hyphen. It cannot start or end with hyphens or have consecutive hyphens.
2. Subdomain : It is present on the left-hand side of the Second-Level Domain separated by a period. It has same restrictions as Second Level Domain. Multiple subdomains can be used separated by a period but the total length should not cross 253 characters.

## DNS Record Types
- A Record : They resolve to IPv4 like 124.34.56.2
- AAAA Record : They resolve to IPv6 like 2606:4700:20::681a:be5
- CNAME Record : They resolve to another domain name. They are used to map a subdomain to the domain hosting the subdomain's content.
- MX Record : They resolve to the address of the server that handles the email of the domain. They come with priority flags which tell the client in which order to try the servers.
- TXT Record - They are text fields where any text-based data can be stored. They are commonly used to list servers which have authority to send email on behalf of the domain.

## DNS request
These are the sequence of operations that occurt when a request for a Domain Name is made.
1. The computer first checks the local cache. If the address is not recently visited then a request to the Recursive DNS Server is made.
2. The Recursive DNS Server has a local cache of recently looked up domain names. If a result is found then it is returned back to the computer and the request is ended.
3. If a request is not found locally, then a search begins starting with the internet's root DNS servers.
4. The Root Servers act as the backbone  of the internet and redirect to the TLD Server. They redirect you to the correct Top Level Domain Server.
5. The TLD Server redirects to the authoritative server (also known as nameserver for the domain).
6. An authoritative DNS Server is responsible for storing the DNS records for a particular domain name. The DNS record is then sent back to the Recursive DNS Server, where a local copy is cached for future reference and sent back to original client.
7. DNS records come with a TTL (Time To Live) value. This represents the number of seconds a record has to be stored before it has to be searched again.

How to make DNS  requests:

1. Domain Name: `nslookup <domain name>`
2. A Record: `nslookup --type=A <domain name>`
3. CNAME Request: `nslookup --type=CNAME <sub-domain>.<domain name>`
4. MX Request: `nslookup --type=MX <domain name>`
5. TXT Record: `nslookup --type=TXT <domain name>`
