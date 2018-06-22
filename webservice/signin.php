<?php
require_once('connection.php');
require_once('jwtToken.php');
//$db=new sqlConnection();

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

$data = json_decode(file_get_contents("php://input"));



$password = $data->password;
$username = $data->username;

$pass=md5($password);

if($username!='' && $pass!=''){
 $login = "select * from users where username='$username' and password='$pass'";		   

$log = $conn->query($login);//($login);  
	//echo "<pre>";print_r($log);die;

    if($log->num_rows > 0){
	    $result['success']="true";
		$token = array();
		$token['id'] = '142';
		$result['token'] = JWT::encode($token, 'secret_server_key');
	    $result['value']   = "Successfully logged";
    }
	else{
	$result['success']="false";
	$result['value']   = "Error";
	}
	    }else{
	    $result['success']="false";
	    $result['value']   = "Fill credentials";   
	    }
//echo "<pre>";print_r($result);die;
echo json_encode($result);
?>
