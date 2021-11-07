<?php 

function QuestionsMarks($str) {  

  for ($i = 0; $i < strlen($str); $i++)
  {
    if (is_numeric($str[$i]) && $i <= strlen($str) - 4) 
    {
      $q_marks = 0;
      for ($x = $i + 1; $x < strlen($str); $x++) 
      {
        if (is_numeric($str[$x]) && $q_marks == 3 && $str[$x] + $str[$i] == 10)
        {
          return 'true';
        } 
        else if ($str[$x] == '?') {
          $q_marks++;
        }
      }
    }
  }
  return 'false'; 
}
   
// keep this function call here  
echo QuestionsMarks("acc?7??sss?3rr1??????5"); 
echo "<br>";
echo QuestionsMarks("aa6?9");  
echo"<br>";
echo QuestionsMarks("arrb6???4xxbl5???eee5");

