<powershell>
Start-Service sshd
Set-Service -Name sshd -StartupType 'Automatic'
New-NetFirewallRule -Name sshd -DisplayName 'OpenSSH' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22
</powershell>
