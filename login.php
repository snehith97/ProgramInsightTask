<?php
$a=trim($_POST['email']);
$a=strip_tags($a);
$a=htmlspecialchars($a);
$b=trim($_POST['password']);
$b=strip_tags($b);
$c=htmlspecialchars($b);
$conn=mysql_connect("localhost","root","");
mysql_select_db("pi_project");
if(isset($_POST))
{
	if(!empty($a) && !empty($b))
	{
		$sql="select email,password from bgt where email='$a' and password='$b'";
		$d=mysql_query($sql);
		$e=mysql_num_rows($d);
		if($e==1)
		{
			echo "login successful";
		}
		else
		{
			echo"wrong input";
		}
		
		
	}
	else
	{
		echo "please fill all the fields";
	}
}
?>