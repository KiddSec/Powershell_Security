$tls10 = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client", "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server"
$tls11 = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\protocols\TLS 1.1\Client", "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\protocols\TLS 1.1\Server"
$tls12 = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\protocols\TLS 1.2\Client", "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\protocols\TLS 1.2\Server"
$ssl2 = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\protocols\SSL 2.0\Client", "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\protocols\SSL 2.0\Server"
$ssl3 = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\protocols\SSL 3.0\Client", "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\protocols\SSL 3.0\Server"

$tls10check = ( $tls10 | Test-Path )
$tls11check = ( $tls11 | Test-Path )
$tls12check = ( $tls12 | Test-Path)
$ssl2check = ( $ssl2 | Test-Path )
$ssl3check = ( $ssl3 | Test-Path )

<#if ($tls10check -eq $false) {
	New-Item $tls10 -force | out-null
	New-ItemProperty -Path $tls10 -name 'Enabled' -value '0' -Type 'DWORD' | out-null
	New-ItemProperty -Path $tls10 -name 'DisabledByDefault' -value '1' -Type 'DWORD' | out-null
	Write-Host 'TLS 1.0 has been disabled on this host'

}
elseif ($tls10check[1] -eq $false) {
	New-Item $tls10[1] -force | out-null
	New-ItemProperty -Path $tls10[1] -name 'Enabled' -value '0' -Type 'DWORD' | out-null
	New-ItemProperty -Path $tls10[1] -name 'DisabledByDefault' -value '1' -Type 'DWORD' | out-null
	Write-Host 'TLS 1.1 Server has been disabled on this host'

}
elseif ($tls10check[0] -eq $false) {
	New-Item $tls10[0] -force | out-null
	New-ItemProperty -Path $tls10[0] -name 'Enabled' -value '0' -Type 'DWORD' | out-null
	New-ItemProperty -Path $tls10[0] -name 'DisabledByDefault' -value '1' -Type 'DWORD' | out-null
	Write-Host 'TLS 1.1 Client has been disabled on this host'

}
else {
	New-ItemProperty -Path $tls10 -name 'Enabled' -value '0' -Type 'DWORD' | out-null
	New-ItemProperty -Path $tls10 -name 'DisabledByDefault' -value '1' -Type 'DWORD' | out-null
	Write-Host 'TLS 1.0 has been disabled on this host'

}


if ($tls11check -eq $false) {
	New-Item $tls11 -force | out-null
	New-ItemProperty -Path $tls11 -name 'Enabled' -value '0' -Type 'DWORD' | out-null
	New-ItemProperty -Path $tls11 -name 'DisabledByDefault' -value '1' -Type 'DWORD' | out-null
	Write-Host 'TLS 1.1 has been disabled on this host'
}
elseif ($tls11check[1] -eq $false) {
	New-Item $tls11[1] -force | out-null
	New-ItemProperty -Path $tls11[1] -name 'Enabled' -value '0' -Type 'DWORD' | out-null
	New-ItemProperty -Path $tls11[1] -name 'DisabledByDefault' -value '1' -Type 'DWORD' | out-null
	Write-Host 'TLS 1.1 Server has been disabled on this host'
}
elseif ($tls11check[0] -eq $false) {
	New-Item $tls11[0] -force | out-null
	New-ItemProperty -Path $tls11[0] -name 'Enabled' -value '0' -Type 'DWORD' | out-null
	New-ItemProperty -Path $tls11[0] -name 'DisabledByDefault' -value '1' -Type 'DWORD' | out-null
	Write-Host 'TLS 1.1 Client has been disabled on this host'
}
else {
	New-ItemProperty -Path $tls11 -name 'Enabled' -value '0' -Type 'DWORD' | out-null
	New-ItemProperty -Path $tls11 -name 'DisabledByDefault' -value '1' -Type 'DWORD' | out-null
	Write-host 'TLS 1.1 has been disabled on this host'
}

if ($tls12check -eq $false) {
	New-Item $tls12 -force | out-null
	New-ItemProperty -Path $tls12 -name 'Enabled' -value '1' -Type 'DWORD' | Out-Null
	New-ItemProperty -Path $tls12 -name 'DisabledByDefault' -value '0' -Type 'DWORD' | Out-Null
	Write-Host 'TLS 1.2 has been enabled on this host'
}
elseif ($tls12check[1] -eq $false) {
	New-Item $tls12[1] -force | out-null
	New-ItemProperty -Path $tls12[1] -name 'Enabled' -value '1' -Type 'DWORD' | Out-Null
	New-ItemProperty -Path $tls12[1] -name 'DisabledByDefault' -value '0' -Type 'DWORD' | Out-Null
	Write-Host 'TLS 1.2 Server has been enabled on this host'
}
elseif ($tls12check[0] -eq $false) {
	New-Item $tls12[0] -force | out-null
	New-ItemProperty -Path $tls12[0] -name 'Enabled' -value '1' -Type 'DWORD' | out-null
	New-ItemProperty -Path $tls12[0] -name 'DisabledByDefault' -value '0' -Type 'DWORD' | out-null
	Write-Host 'TLS 1.2 Client has been enabled on this host'
}
else {
	New-ItemProperty -Path $tls12 -name 'Enabled' -value '1' -Type 'DWORD' | Out-Null
	New-ItemProperty -Path $tls12 -name 'DisabledByDefault' -value '0' -Type 'DWORD' | Out-Null
	Write-host 'TLS 1.2 has been enabled on this host'
}#>

if ($ssl2check -eq $false) {
	New-Item $ssl2 -force | out-null
	New-ItemProperty -Path $ssl2 -name 'Enabled' -value '0' -Type 'DWORD' | out-null
	New-ItemProperty -Path $ssl2 -name 'DisabledByDefault' -value '1' -Type 'DWORD' | out-null
	Write-Host 'SSL 2.0 has been disabled on this host'
}
elseif ($ssl2check[1] -eq $false) {
	New-Item $ssl2[1] -force | out-null
	New-ItemProperty -Path $ssl2[1] -name 'Enabled' -value '0' -Type 'DWORD' | out-null
	New-ItemProperty -Path $ssl2[1] -name 'DisabledByDefault' -value '1' -Type 'DWORD' | out-null
	Write-Host 'SSL 2.0 Server has been disabled on this host'
}
elseif ($ssl2check[0] -eq $false) {
	New-Item $ssl2[0] -force | out-null
	New-ItemProperty -Path $ssl2[0] -name 'Enabled' -value '0' -Type 'DWORD' | out-null
	New-ItemProperty -Path $ssl2[0] -name 'DisabledByDefault' -value '1' -Type 'DWORD' | out-null
	Write-Host 'SSL 2.0 Client has been disabled on this host'
}
else {
	New-ItemProperty -Path $ssl2 -name 'Enabled' -value '0' -Type 'DWORD' | out-null
	New-ItemProperty -Path $ssl2 -name 'DisabledByDefault' -value '1' -Type 'DWORD' | out-null
	Write-host 'SSL 2.0 has been disabled on this host'
}

if ($ssl2check -eq $false) {
	New-Item $ssl2 -force | out-null
	New-ItemProperty -Path $ssl2 -name 'Enabled' -value '0' -Type 'DWORD' | out-null
	New-ItemProperty -Path $ssl2 -name 'DisabledByDefault' -value '1' -Type 'DWORD' | out-null
	Write-Host 'SSL 2.0 has been disabled on this host'
}
elseif ($ssl2check[1] -eq $false) {
	New-Item $ssl2[1] -force | out-null
	New-ItemProperty -Path $ssl2[1] -name 'Enabled' -value '0' -Type 'DWORD' | out-null
	New-ItemProperty -Path $ssl2[1] -name 'DisabledByDefault' -value '1' -Type 'DWORD' | out-null
	Write-Host 'SSL 2.0 Server has been disabled on this host'
}
elseif ($ssl2check[0] -eq $false) {
	New-Item $ssl2[0] -force | out-null
	New-ItemProperty -Path $ssl2[0] -name 'Enabled' -value '0' -Type 'DWORD' | out-null
	New-ItemProperty -Path $ssl2[0] -name 'DisabledByDefault' -value '1' -Type 'DWORD' | out-null
	Write-Host 'SSL 2.0 Client has been disabled on this host'
}
else {
	New-ItemProperty -Path $ssl2 -name 'Enabled' -value '0' -Type 'DWORD' | out-null
	New-ItemProperty -Path $ssl2 -name 'DisabledByDefault' -value '1' -Type 'DWORD' | out-null
	Write-host 'SSL 2.0 has been disabled on this host'
}
