<?php
$config = require __DIR__ . '/config.php';
$host = $config['db_host'];
$username = $config['db_user'];
$db_password = $config['db_pass'];
$dbName = $config['db_name'];

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbName", $username, $db_password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $ex) {
    echo "Connection failed: " . $ex->getMessage();
    echo "<p>Sorry, a database error occurred. Please try again.</p>";
}
?>