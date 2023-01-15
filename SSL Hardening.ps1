$tls10 = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client", "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server"
#$tls11 = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\protocols\TLS 1.1\Client", "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\protocols\TLS 1.1\Server"
#$tls12 = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\protocols\TLS 1.2\Client", "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\protocols\TLS 1.2\Server"
#$ssl2 = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\protocols\SSL 2.0\Client", "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\protocols\SSL 2.0\Server"
#$ssl3 = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\protocols\SSL 3.0\Client", "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\protocols\SSL 3.0\Server"

$tls10check = ( $tls10 | Test-Path )
#$tls11check = ( $tls11 | Test-Path )
#$tls12check = ( $tls12 | Test-Path)
#$ssl2check = ( $ssl2 | Test-Path )
#$ssl3check = ( $ssl3 | Test-Path )

if ($tls10check -eq $false) {
	New-Item $tls10 -force
	New-ItemProperty -Path $tls10 -name 'Enabled' -value '0' -Type 'DWORD'
	New-ItemProperty -Path $tls10 -name 'DisabledByDefault' -value '1' -Type 'DWORD'
}
elseif ($tls10check[1] -eq $false) {
	New-Item $tls10[1] -force
	New-ItemProperty -Path $tls10[1] -name 'Enabled' -value '0' -Type 'DWORD'
	New-ItemProperty -Path $tls10[1] -name 'DisabledByDefault' -value '1' -Type 'DWORD'
}
elseif ($tls10check[0] -eq $false) {
	New-Item $tls10[0] -force
	New-ItemProperty -Path $tls10[0] -name 'Enabled' -value '0' -Type 'DWORD'
	New-ItemProperty -Path $tls10[0] -name 'DisabledByDefault' -value '1' -Type 'DWORD'
}
else {
	New-ItemProperty -Path $tls10 -name 'Enabled' -value '0' -Type 'DWORD'
	New-ItemProperty -Path $tls10 -name 'DisabledByDefault' -value '1' -Type 'DWORD'
}




