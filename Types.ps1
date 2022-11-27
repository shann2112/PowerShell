# A simple string example and changing its case.
$StringValue = "Yoo hoo!"
$StringValue.ToUpper()
$StringValue.ToLower()

# Set array and then pick out a value at position 2
$MyArray = 1,2,3,4,5
$MyArray[1]

# Display the type on the integer
$LittleNumber = 12345
$LittleNumber.GetType()
$BigNumber = 123456789123456789
$BigNumber.GetType()

# In floating point, we have 32- and 64-bit options again, single/float and double precision numbers.
[float]$Floaty32 = 12.12
$Floaty32.GetType()
[double]$Floaty64 = 12345.1234
$Floaty64.GetType()
