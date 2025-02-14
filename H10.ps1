gci c:\Windows\ | Export-Clixml  c:\windows.xml
Import-Clixml  c:\windows.xml
<?xml version='1.0' encoding='UTF-8'?>
<autod>
	<auto>
		<automark>Hyundai</automark>
		<mudel>Elantra</mudel>
		<aasta>1993</aasta>
	</auto>
	<auto>
		<automark>Mazda</automark>
		<mudel>MX-5</mudel>
		<aasta>1994</aasta>
	</auto>
</autod>
$xml = [xml](Get-Content c:\autod.xml)
$xml.autod.auto
$xml = [xml](Get-Content c:\autod.xml)
$xml.autod.auto.automark
$xml = [xml](Get-Content c:\autod.xml)
$rows = $xml.autod.auto
foreach ($row in $rows)
{
    if($row.aasta -gt 2000){
        $row.automark
    }
}
