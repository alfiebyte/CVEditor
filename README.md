# CVEditor

![PHP](https://img.shields.io/badge/PHP-777BB4?logo=php&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?logo=mysql&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=black)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?logo=css3&logoColor=white)

A web app for creating, editing and browsing CVs. Users register an account, build their own CV, and anyone can search the directory by name or key programming language.

## Features

- **Browse and search:** view every CV in the directory, or search by name or key programming language
- **Edit your CV:** set your name, email and professional summary, and add programming languages (with one marked as your key language), education and links
- **Accounts:** register and log in, with passwords stored as hashes using PHP's `password_hash`
- **Secure by default:** prepared PDO statements, and CSRF tokens on form submissions

## Tech Stack

| Area | Technology |
| --- | --- |
| Frontend | HTML, CSS, vanilla JavaScript |
| Backend | PHP |
| Database | MySQL (accessed through PDO) |
| Authentication | PHP sessions, `password_hash` / `password_verify` |
| Security | Prepared statements, CSRF tokens, `htmlspecialchars` output escaping |

## Install

Requires PHP 8+ and a MySQL server.

Use the ``database.sql`` schema on your MySQL

```php
return [
    'db_host' => 'localhost',
    'db_name' => 'your_database',
    'db_user' => 'your_username',
    'db_pass' => 'your_password',
];
```

change `include/config.example.php` to ``include/config.php`` with your credientials

3. Start the app with PHP's built-in server:

```bash
php -S localhost:8000
```

Then open http://localhost:8000.