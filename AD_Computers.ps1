# Define the OU where computers will be created
$OUPath = "OU=Computers,OU=IT,OU=OCEANIA,DC=EastLab,DC=local"

# Loop to create 20 computers
for ($i = 1; $i -le 30; $i++) {

    # Format the computer name
    $ComputerName = "COMP-IT-OCE-" + $i.ToString("000")

    # Create the computer object in Active Directory
    New-ADComputer `
        -Name $ComputerName `
        -SamAccountName $ComputerName$ `
        -Path $OUPath `
        -Description "OCEANIA-PC" `
        -Enabled $true

    Write-Host "Created computer: $ComputerName in $OUPath"
}

Write-Host "All 20 computers created successfully."