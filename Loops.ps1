# MIck Shannon L00177543
# This fike contains a collection of loops

# a FOR loop 
for ($counter = 0; $counter -lt 10; $counter++)
{
$counter
}

#We can iterate through an array using foreach.
$MyArray = "J", "o", "h", "n"
foreach ($Letter in $MyArray)
{
$Letter
}

# While Loops, Set a value, iterate and increment value. Use the Not Equal to continue
$val = 0
while($val -ne 3)
{
$val++
Write-Host $val
}

while(($inp = Read-Host -Prompt "Select a command") -ne "Q"){
    switch($inp){
    L {"File will be deleted"}
    A {"File will be displayed"}
    R {"File will be write protected"}
    Q {"End"}
    default {"Invalid entry"}
    }
    }
   
    #Do/Until
    #A do until loop is very similar to while.
    $a = 0
    do
    {
    “Starting Loop $a”
    $a
    $a++
    “Now `$a is $a”
    } until ($a -ge 5)

    Dir | Format-Table | Out-Host
