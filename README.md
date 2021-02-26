# genshin-guide
### How to Run
1. Make sure git and and XAMPP is installed on the computer.
2. Clone this repository using `git clone https://github.com/marxchryz/genshin` in the terminal.
3. Place the genshin folder to C:/xampp/htdocs/ or to whatever the path of your php server.
4. Start php and mysql server on XAMPP.
5. Navigate to `http://localhost/phpmyadmin`
6. Add a new database with the name of `genshin`
7. While on the new database, go to the import tab and import the genshin.sql located on the folder in step 2.
8. In the genshin folder as well, edit the `includes/config.php`. Change `$user` and `$pass` variables to your phpmyadmin credentials, for the username the default is 'root' while the password is '' (blank)
```
if(strpos($_SERVER['HTTP_HOST'], 'localhost') !== false){
  $user = 'pmauser';
  $pass = 'Pm4u53r!';
  $host = 'localhost';
  $db = 'genshin';
}
```
9. Open `http://localhost` on your web browser.

### Live Demo
[Genshin Guide](http://genshin-guide.atspace.cc)
