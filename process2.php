<?php
$array1 = array();

foreach ($_POST as $key => $value){
	$array1[] = $key;
}
mysql_connect('localhost','root','');
mysql_select_db('code_tri');
$score = 0;
$array_size = sizeof($array1);
$correct_ans='';
for($i=0;$i<$array_size;$i++){
	$value = mysql_query('SELECT correct_ans FROM questions WHERE id = '.$array1[$i]);
	while($value2 = mysql_fetch_assoc($value) ){
		$correct_ans = $value2['correct_ans'];
	}
	if($_POST[$array1[$i]] == $correct_ans){
		$score++;
	}
}
echo 'Your score is '.$score;

?>