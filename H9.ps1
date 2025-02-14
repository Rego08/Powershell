$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath

Import-Csv $dir\users.csv | Format-Table
Import-Csv $dir\users.csv -Delimiter ";" | Format-Table
Import-Csv $dir\users.csv  -Header id,eesnimi,perenimi,email,sugu,ip | Format-Table
Import-Csv $dir\users.csv  -Header id,eesnimi,perenimi | Format-Table
Import-Csv $dir\users.csv | select email, ip_address | Format-Table
$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath

$last_name = @()
$users = Import-Csv $dir\users.csv
ForEach($user in $users){
    if( $user.gender -eq "Male"){
        $last_name += $user.last_name
    }
}

$last_name
#sama kataloog, mis skriptil
$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath

#tekitame massiivi CSV päise jaoks
$csv_header = @("email;password")

#lisame päise CSV faili
$csv_header | Set-Content $dir\emails.csv

#loeme sisse kasutajad
$users = Import-Csv $dir\users.csv

#käime kasutajad rea kaupa läbi, loome andmed ja lisame CSV faili
ForEach($user in $users){
    $fname = $user.first_name
    $lname = $user.last_name

    $pass = 1..6 | ForEach-Object { Get-Random -Maximum $lname.Length }
    $pass = -join $lname[$pass] 
    $pass += Get-Random -Maximum 10

    $row = $fname.ToLower()+"."+$lname.ToLower()+"@metshein.com;"+$pass
    Add-Content $dir\emails.csv $row
}
