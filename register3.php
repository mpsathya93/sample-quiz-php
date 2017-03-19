	<?php

$con=mysqli_connect('localhost','root','','code_tri');
//$con=mysql_select_db('code_tri');


	if($_POST['submit']);
     {              $personid1 = $_POST['id1'];
                    $personid2 = $_POST['id2'];
                    $personid3 = $_POST['id3'];
					
	
$first1 = mysqli_query($con,"SELECT pid1 FROM score WHERE pid1='$personid1'");
$first=!isset($first1);
$second1=mysqli_query($con,"SELECT pid2 FROM score WHERE pid2='$personid1'");
$second=!isset($second1);
$third1=mysqli_query($con,"SELECT pid3 FROM score WHERE pid3='$personid1'");
$third=!isset($third1);
	
$fourth1=mysqli_query($con,"SELECT pid1 FROM score WHERE pid1='$personid2'");
$fourth=!isset($fourth1);
$fifth1=mysqli_query($con,"SELECT pid2 FROM score WHERE pid2='$personid2'");
$fifth=!isset($fifth1);
$six1=mysqli_query($con,"SELECT pid3 FROM score WHERE pid3='$personid2'");
$six=!isset($six1);
$seven1=mysqli_query($con,"SELECT pid1 FROM score WHERE pid1='$personid3'");

$seven=!isset($seven1);
$eight1=mysqli_query($con,"SELECT pid2 FROM score WHERE pid2='$personid3'");
$eight=!isset($eight1);
$nine1=mysqli_query($con,"SELECT pid3 FROM score WHERE pid3='$personid3'");
$nine=!isset($nine1);





if( $first || $second || $third ||  $fourth || $fifth   || $six || $seven || $eight || $nine )
{
echo "The enterd id already particpated the test";

}              	 


else{
	//form data
                  
					mysqli_query($con,"INSERT INTO score (pid1,pid2,pid3) VALUES ('$personid1','$personid2','$personid3')") or die('Cannot insert because the data is already present');
                 	echo "$personid1";echo "<br>";
					echo "$personid2";echo "<br>";
					echo "$personid3";echo "<br>";


					
					
					
					}




}
	?>