#Any C programmers will start being at home now! In the previous session we used if and elseif to
#select a day, here I use switch [4].
$day = 4
switch ( $day )
{
0 { $result = 'Sunday' }
1 { $result = 'Monday' }
2 { $result = 'Tuesday' }
3 { $result = 'Wednesday' }
4 { $result = 'Thursday' }
5 { $result = 'Friday' }
6 { $result = 'Saturday' }
}
$result
