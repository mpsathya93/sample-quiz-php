<?php
?>
<html>
   <head><title>ONLINE PRELIMS</title> 


<script type="text/javascript">
var seconds = 10;
function secondPassed()
{
                                 var minutes = Math.round((seconds - 30)/60);
                                 var remainingSeconds = seconds%60;
                                 if (remainingSeconds < 10)
                                 {
                                  remainingSeconds = "0" + remainingSeconds;
                                 }
                                 document.getElementById('countdown').innerHTML = minutes + ":" + remainingSeconds;
                                 if (seconds == 0)
                                 {
                                  clearInterval(countdownTimer);
                                  document.getElementById('countdown').innerhtml = "buzz buss";
                                 }
                                 else
                                 {
                                  seconds--;
                                 }
                                 }
                                 var countdownTimer = setInterval('secondPassed()',1000);





                </script>
</head>
   <body onload="setTimeout('document.test.submit();',10000);">

<div id="countdown" class="timer" style=" right:30px; position:fixed;color:red;">
                </div>

<!--input type="label" name="countdown"-->




<?php
$con=mysqli_connect('localhost','root','','code_tri');
//mysql_select_db('code_tri');
  echo "<center><h1>CODE TRIATHALON</h1></center>";
  $i=0;
	echo "<form name=\"test\" action=\"process2.php\" method=\"POST\"> ";
  $array=array();	 
  while($i<9)
	{	  
	$id = mt_rand(1,10);
  if(!(in_array($id,$array)))
  {
      $array[]=$id;
    	$sample = mysqli_query($con,"SELECT * FROM questions WHERE id = $id");
    	echo "<br><br>";
    		while($sample1 = mysqli_fetch_assoc($sample)){
            		
               echo"<b>";echo $i+1;  echo '. ' .$sample1['question'].'</b><br>';
               echo "<input type=\"radio\" value=\"a\" name=\"".$sample1['id']."\">".$sample1['option1'].'<br>'; 
               echo "<input type=\"radio\" value=\"b\" name=\"".$sample1['id']."\">".$sample1['option2'].'<br>';
               echo "<input type=\"radio\" value=\"c\" name=\"".$sample1['id']."\">".$sample1['option3'].'<br>';
              echo "<input type=\"radio\" value=\"d\" name=\"".$sample1['id']."\">".$sample1['option4'].'<br>';
              //echo "<input type=\"radio\" value=\"sample\" >";
              $i=$i+1;
    		}
	}
}

	echo "<input type=\"submit\" value=\"Submit\"></form>";

mysqli_close($con);

?>
   </body>
</html>   