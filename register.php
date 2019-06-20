<?php
$a=trim($_POST['name']);
$a=strip_tags($a);
$a=htmlspecialchars($a);

$b=trim($_POST['email']);
$b=strip_tags($b);
$b=htmlspecialchars($b);

$c=trim($_POST['password']);
$c=strip_tags($c);
$c=htmlspecialchars($c);

$d=trim($_POST['confirm-password']);
$d=strip_tags($d);
$d=htmlspecialchars($d);
$conn=mysql_connect("localhost","root","");
mysql_select_db("pi_project");


if(isset($_POST['submit']))
{
	if(!empty($a) && !empty($b) && !empty($c) && !empty($d))
	{ 
       if($c==$d)
	   {
		 $ed="select email  from mail where email='$b'";
		 $de=mysql_query($ed);
		 $tr=mysql_num_rows($de);
		 if($tr==1)
		 {
		$t="select email from bgt where email='$b'";
		$ab=mysql_query($t);
		$row=mysql_num_rows($ab);
		if($row==0)
		{
	   
		$sql="insert into bgt (name,email,password)values('$a','$b','$c')";
		if(mysql_query($sql))
		{
			echo "data is inserted";
		
		}
		else
		{
			echo "data is not inserted";
		}
		
	}
	else
	{
		echo "email is already present";
	}
}
else
{
	echo "invalid email-id";
}
}
else
{
	echo"password mismatch";
}
	}
	else
{
	echo "please fill all fields";
}
}

?>