$a = "Tekst"
$b = 3
$c = 3.14
[datetime] - kuupäev või kellaaeg
[string] - sõne
[char] - üksik märk
[double] - komaarvud
[int] - täisarv
[wmi] - Windows Management Instrumentation (WMI) objekt
[adsi] - Active Directory Services objekt
[wmiclass] - WMI klass
[Boolean] - tõene või väär
$teenus[2,4,5]
$teenus[-1]
$serverid = @{
 "server1" = "192.168.1.30";
 "server2" = "192.168.1.40";
 "server3" = "192.168.1.50"
 }
  $serverid.keys
 $serverid.values
 $domeen = "metshein.com"
$domeen[0]
$uusDomeen = $domeen.ToCharArray()
$nimed = "Rheta,Bryant,Norby,Geoff,Jarret,Eleonora,Everard,Charin,Nils,Chaddy"
$nimed.split(",")
$nimed = @("Rheta","Bryant","Norby","Geoff","Jarret","Eleonora","Everard","Charin","Nils")
$nimed -join ","
#väljund: Rheta,Bryant,Norby,Geoff,Jarret,Eleonora,Everard,Charin,Nils