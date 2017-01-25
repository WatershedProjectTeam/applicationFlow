<!DOCTYPE HTML>

<html>

<body>

<?php


$pwd = $_GET['i'];

if ($pwd == "A!z0Dt")
{
echo "in";
$stringData = $_GET['b'];


$newString = str_replace(' NAN','0.00',$stringData);

$stringData = $newString;




# write to text file
//$myfile = "upflume1.txt";
//$file = fopen("$myfile", "a") or die("Unable to open file!");
//fwrite($file, "\r" . $_SERVER['REMOTE_ADDR'] ."," . $stringData );
//fclose($file);

//Port and socket inserted by MLC Jan2017
$db_host = 'localhost';
$port=3306;
$socket="";
$db_user = 'hydro';
$db_pwd  = 'snorty7';
$db_name = 'hydrologs';


$db = new MySQLi($db_host, $db_user, $db_pwd, $db_name, $port, $socket);


if ($db->connect_errno)

{

    echo "Failed to connect to MySQL: (" . $db->connect_errno . ") " . $db->connect_error;

}

echo $db->host_info . "\n";


// example telemetry:
// 172.56.36.161 - - [12/Oct/2016:14:25:09 -0400] "GET /upflume1.php?i=A!z0Dt&b=raingage,1476296700,8.565,20.85,1001.73, NAN,13.31,198.80,92.27,0,280.90,* HTTP/1.1" 200 252 "-" "FONA"


# insert into database table

$stringDataArray = explode(",",$stringData);

$url = $_SERVER['REMOTE_ADDR'];
echo $url;
$id = $stringDataArray[0];
echo $id;
$unixtime = $stringDataArray[1];
echo $unixtime;
$head = $stringDataArray[2];

$airtemp = $stringDataArray[3];

$barometric = $stringDataArray[4];

$watertemp = $stringDataArray[5];

$voltage = $stringDataArray[6];

$current = $stringDataArray[7];

$relative = $stringDataArray[8];

$tipcount = $stringDataArray[9];

$eleccond = $stringDataArray[10];

$eol = $stringDataArray[11];




$query = "INSERT INTO hydrologs.upflume1 (URL, ID, UNIXtime, Head, AirTemp, Barometric, WaterTemp, Voltage, Current, Relative, TipCount, ElecCond, EOL) VALUES ('$url', '$id', '$unixtime', '$head', '$airtemp', '$barometric', '$watertemp', '$voltage', '$current', '$relative', '$tipcount', '$eleccond', '$eol')";

echo $query;
// The next line was the issue preventing the write to the database - MLC Jan2017
// $results = $mysqli_query($query) or die ('Error in your query.');




$results = $db->query($query) or die ('bad query.');

echo $results;






echo "ok"; // uncomment to reply with only an OK to requestor

// no reply to requestor


}

else

{

echo "You do not have permission to access this page.";

}

?>

</body>

</html>