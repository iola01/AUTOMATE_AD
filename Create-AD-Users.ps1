
$users = Import-Csv "C:\Users\Administrator\Desktop"

foreach ($user in $users) {
    $DisplayName = "$($user.FirstName) $($user.LastName)"
    $SamAccountName = "$($user.FirstName).$($user.LastName)".ToLower()

    try {
        New-ADUser `
            -Name $DisplayName `
            -GivenName $user.FirstName `
            -Surname $user.LastName `
            -SamAccountName $SamAccountName `
            -UserPrincipalName $user.UserPrincipalName `
            -Path $user.OU `
            -AccountPassword (ConvertTo-SecureString "Password123" -AsPlainText -Force) `
            -Enabled $true `
            -ChangePasswordAtLogon $true

        Write-Host "Created user: $DisplayName in $($user.OU)" -ForegroundColor Green

    
    }
    catch {
        Write-Host "Failed to create user: $DisplayName - Error: $_" -ForegroundColor Red
        $_ | Out-File -Append "C:\Users\Administrator.EAST-LAB-DC\Desktop\errorlog.txt"
    }
}
