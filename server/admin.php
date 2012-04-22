<?
session_start();

if (array_key_exists('admin', $_SESSION))
$logged = $_SESSION['admin'];
else $logged = null;
?>

<html>
<head>
	<title>Pineaple Administrator</title>
	<style type="text/css">
	#loginbox {
		display:inline-block;
		width:300px;
		margin-left:auto;
		margin-right:auto;
		margin-top:100px;
	}
	#loginbox input {
		margin-top:5px;
		margin-bottom:5px;
	}
	#loginbox span {
		display: none;
		float: left;
		text-align: center;
		width: 100%;
		margin-top: 10px;
		color:#f60;
	}
	button {  margin-top: 10px;}
	button:active {
		position:relative;
		top:1px;
		left:1px;
	}
	</style>
</head>
<body>
	<?
	if (!$logged) {
		include "login.html"; 
	} else { 
		include "uploader.php";
	} 
	?>
</body>
</html>


