﻿$I = 0
$env:PSModulePath -split ';' |
ForEach-Object {"[{0:NO}] {1}" -f $I++, $_}