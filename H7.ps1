$a = 5
$b = 7
$a -eq $b
#True
$tekst = "metshein.com"
$tekst -like "*.com"
"POWERSHELL" -eq "powershell"
"POWERSHELL" -ceq "powershell"
# False
if (tingimus) {
	tegevus kui on tõene
}
$a = Get-WmiObject Win32_Processor | Select-Object -Property name
if($a -like "*intel*"){"Sa kasutad Intel protsessorit"}
if (tingimus) {
	tegevus kui on tõene
} else {
	tegevus kui on väär
}
$a = Get-WmiObject Win32_Processor | Select-Object -Property name
if($a -like "*intel*"){"Sa kasutad Intel protsessorit"}else{"Muu protsessor"}
if (tingimus) {
	teguvus 1 kui on tõene
} elseif (tingimus) {
	teguvus 2 kui on tõene
} else {
	tegevus kui on väär
}
$tunnid = Get-Date -Format 'HH'

if ($tunnid –gt 8 -and $tunnid -lt 12) {
	$olek = "hommik"
} elseif ($tunnid –gt 12 -and $tunnid -lt 13) {
	$olek = "lõuna"
} elseif ($tunnid –gt 13 -and $tunnid -lt 17) {
	$olek = "õhtu"
} else {
	$olek = "ei tööta"
}

$olek
$np = (Get-Date).DayOfWeek.value__

switch ($np) {
    0 {Write-Host "Pühapäev"}
    1 {Write-Host "Esmaspäev"}
    2 {Write-Host "Teisipäev"}
    3 {Write-Host "Kolmapäev"}
    4 {Write-Host "Neljapäev"}
    5 {Write-Host "Reede"}
    6 {Write-Host "Laupäev"}
    default {Write-Host "teadmata"}
}
$nimed = @("Rheta","Bryant","Norby","Geoff","Jarret","Eleonora","Everard","Charin","Nils")

$nimed -contains "Jarret"
//True

"Mario" -in $nimed
//False
$nimed = @("Rheta","Bryant","Norby","Geoff","Jarret","Eleonora","Everard","Charin","Nils")

$nimi = Read-Host -Prompt 'Sisesta nimi'

if ($nimed -contains $nimi) {
	Write-host "Selline kasutaja on juba olemas"
} else {
	Write-host "Sellist kasutajat pole, lisan..."
	$nimed += $nimi
}

$nimed
for($i=0;$i -lt 10;$i++){
   Write-Host $i
}
$nimed = @("Rheta","Bryant","Norby","Geoff","Jarret","Eleonora","Everard","Charin","Nils")

for($i=0;$i -lt $nimed.length;$i++){
	if($i%2 -eq 0){
		Write-Host $nimed[$i]
	}
}
$nimed = @("Rheta","Bryant","Norby","Geoff","Jarret","Eleonora","Everard","Charin","Nils")

foreach($nimi in $nimed){
		Write-Host $nimi
}
foreach($p in Get-Process){
    if($p.PM / 1024 / 1024 -gt 100){
        Write-Host "Protsess:" $p.Name "kasutab üle 100MB RAMi"
    }
}
$i=0
while($i -lt 10){
    Write-Host $i
    $i++
}
$loop = 1
while($loop -eq 1){
    if((Get-Date -Format 'hh:mm') -eq '00:00'){
        Write-Host "Hei, kell on juba palju - mine magama"
        $loop = 0
    }
}
