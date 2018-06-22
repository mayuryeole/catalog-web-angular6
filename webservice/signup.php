<?php
require_once('connection.php');//your db connection
//$db=new sqlConnection();

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

$data = json_decode(file_get_contents("php://input"));

 
$firstName = $data->firstName;
$lastName = $data->lastName;
$password = $data->password;
$username = $data->username;
	
$pass=md5($password);
//$dtime=date('Y-m-d H:i:s');	
		
$sql="INSERT INTO users (firstName,lastName,password,username)VALUES('$firstName','$lastName','$pass','$username')";

if ($conn->query($sql) === TRUE) {
    
$result['success']="true";
$result['value']   = "Registered successfully.";	
} else {
	$result['success']="false";
$result['value']   = "Error: " . $sql . "<br>" . $conn->error;	
    
}



echo json_encode($result);	
$conn->close();	
?>