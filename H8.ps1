"suvaline tekst" | Get-Member
$tekst = "   lorem ipsum   "
$tekst.Trim();
$tekst.TrimEnd();
$tekst.TrimStart();
$tekst = "   lorem           ipsum   "
$uusTekst = $tekst -replace "\s+"," "
$uusTekst.Trim()
$tekst = "lorem IPSUM"
$tekst.ToLower()
$tekst.ToUpper()
$tekst = "lorem IPSUM"
(Get-Culture).TextInfo.ToTitleCase($tekst.ToLower())
$tekst = "lorem IPSUM"
$tekst[0]
$tekst = "lorem IPSUM"
$tekst.Substring(2,3)
$tekst = "lorem IPSUM"
$tekst.Remove(2,3)
$tekst = "Lorem ipsum dolor sit amet"
$tykeldatud = $tekst.Split(" ")
$tykeldatud[0]
$t1 = "Lorem"
$t2 = "Ipsum"
$t1+" "+$t2

$t1 = "Lorem"
$t2 = "Ipsum"
"$t2 $t2"
$tekst = "Raivo Järvi"
$tekst.Replace("ä","a")
$tekst = "Jüri Külajõe"
$tekst.Replace("ü","u").Replace("õ","o")
3 + 4         #liitmine
3 - 6         #lahutamine
3 * 8         #korrutamine
3 * ( 3 + 6 ) #tehete järjekord
3 / 4         #jagamine
3 % 2         #jääk
[Math] | Get-Member -Static -MemberType All
[Math]::Round(3.64)
[Math]::Round(3.64,1)
[Math]::Floor(3.64)
[Math]::Sqrt(81)
[Math]::Pow(2,3)
[Math]::Abs(-3)
$r = 9
$s = [Math]::Round([Math]::PI*[Math]::Pow($r,2),2)
Write-Host $s
function minuFunktsioon{
    "Hello PowerShell"
}
minuFunktsioon
function ytle-tere($nimi="vaikimisi nimi", $vanus=0){
    "Tere $nimi, $vanus"
}

ytle-tere
ytle-tere "Mario" 37
ytle-tere -vanus 37

#Väljund
# Tere vaikimisi nimi, 0
# Tere Mario, 37
# Tere vaikimisi nimi, 37
function ytle-tere{
    param($nimi="vaikimisi nimi", $vanus=0)
    "Terekest $nimi, $vanus"
}

ytle-tere "Mario" 37
ytle-tere

#Väljund
# Terekest Mario, 37
# Terekest vaikimisi nimi, 0
function ytle-tere{
    param
        (
        [Parameter(Mandatory=$true, HelpMessage=’Lisa oma nimi’)]
        $nimi,
        [Parameter(Mandatory=$true, HelpMessage=’Lisa oma vanus’)]
        $vanus
        )
    "Terekest $nimi, $vanus"
}
cmdlet ytle-tere at command pipeline position 1
Supply values for the following parameters:
(Type !? for Help.)
nimi: mario
vanus: 37
function dec-to-bin{
    param($Number)
    $teisendus = [System.Convert]::ToString($Number, 2)
    return $teisendus
}

dec-to-bin 1020

#Väljund
# 1111111100
function Test-Funktsioon
{
    <#
    .SYNOPSIS
        Lühike funktsiooni kirjeldus
    .DESCRIPTION
        Pikem ja põhjalikum funktsiooni kirjeldus
    .EXAMPLE
        Esimene näide kuidas kasutada funktsiooni
    .EXAMPLE
        Teine näide kuidas kasutada funktsiooni
    #>
        param
        (
            # Esimese parameetri kirjeldus
            $Parameter1,
            # Teise parameetri kirjeldus
            $Parameter2
        )
        ‘Ma olen hästi dokumenteeritud funktsioon :)’
}
Get-Help Test-Funktsioon
Get-Help Test-Funktsioon -examples
