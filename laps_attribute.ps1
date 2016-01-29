# Get AD computers where attribute is not null
$PCs = Get-ADComputer -Filter {ms-Mcs-AdmPwd -like "*"} -Properties Name, ms-Mcs-AdmPwd, ms-Mcs-AdmPwdExpirationTime | sort Name | ft Name, ms-Mcs-AdmPwd, ms-Mcs-AdmPwdExpirationTime
$PCs
Write-Host $PCs.count "Computers with LAPS enabled"
