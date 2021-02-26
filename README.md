# genshin-guide
### How to Run
1. Install kayo ng git at tsaka XAMPP
2. Sa terminal, lagay nyo `git clone https://github.com/marxchryz/genshin`
3. Place nyo tong genshin na folder papunta sa C:/xampp/htdocs/ nyo kung yan man ung path
4. Start nyo ung php at mysql server sa XAMPP.
5. Punta kayo sa `http://localhost/phpmyadmin`
6. Add kayo new database na `genshin` ung pangalan
7. Habang nasa bagong gawang `genshin` na database. Click nyo ung import tapos import nyo ung genshin.sql na nasa folder sa step 3.
8. Then sa files nyo naman, edit nyo ung nasa `includes/config.php`. Bali change nyo ung `$user` at `$pass` depende sa user at pass ng xampp nyo, default is 'root' ung user tapos '' (blank) ung pass
```
if(strpos($_SERVER['HTTP_HOST'], 'localhost') !== false){
  $user = 'pmauser';
  $pass = 'Pm4u53r!';
  $host = 'localhost';
  $db = 'genshin';
}
```
9. Open nyo na lang ung `http://localhost` sa browser nyo
