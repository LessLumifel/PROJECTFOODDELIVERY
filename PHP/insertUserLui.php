<?php
	include 'connectedLui.php';
	header("Access-Control-Allow-Origin: *");

if (!$link) {
    echo "Error: Unable to connect to MySQL." . PHP_EOL;
    echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
    echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
    
    exit;
}

if (!$link->set_charset("utf8")) {
    printf("Error loading character set utf8: %s\n", $link->error);
    exit();
	}

if (isset($_GET)) {
	if ($_GET['isAdd'] == 'true') {
				
		$Name = $_GET['Name'];
		$User = $_GET['User'];
		$Password = $_GET['Password'];
		$ChooseType = $_GET['ChooseType'];
		
							
		$sql = "INSERT INTO `Project_Lui`(`id`, `ChooseType`, `Name`, `User`, `Password`) VALUES (Null,'$ChooseType','$Name','$User','$Password')";

		$result = mysqli_query($link, $sql);

		if ($result) {
			echo "true";
		} else {
			echo "false";
		}

	} else echo "Welcome Master Lui";
   
}
	mysqli_close($link);
?>