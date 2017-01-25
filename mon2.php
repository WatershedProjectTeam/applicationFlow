<?php 


//This page was written by Mike Crawley 01/15/2017 as a means to test database connection to MySql from PHP 7
//This should show entire query of the Hydrologs database
//This method uses the updated method of MySQLi instead of MySQL
Print "Connection test page";  


Echo "Before db connect", PHP_EOL;

$host="localhost";
$port=3306;
$socket="";
$user = 'hydro';
$pwd  = 'snorty7';
$dbname="hydrologs";



Echo "Before db connect", PHP_EOL;
$conn = new MySQLi($host, $user, $pwd, $dbname) or die(mysqli_error());
if ($conn->connect_error) {
	die("Connection failed: ". $conn->connect_error);
}


Echo "After connection1", PHP_EOL;


$sql = "SELECT * FROM hydrologs.upflume1";
// $sql = "SELECT * FROM hydrologs.upflume1 where UNIXtime=1455824400";
$result = $conn->query($sql);


if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "id: " . $row["id"]. " - url: " . $row["URL"]. " " . $row["UNIXtime"]. "<br>";
    }
} else {
    echo "0 results";
}


$conn->close();


// phpinfo();
Echo "After connection2", PHP_EOL;




 ?> 