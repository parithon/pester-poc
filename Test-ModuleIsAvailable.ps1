<#
    .SYNOPSIS
    This is to test the Pester mocking of Get-Module
#>
param
(
    [string]Name
)

if ($null -eq (Get-Module $Name -ListAvailable)) {
    Write-Warning "Could not find '$Name' within any module folder."
    return $false
}

return $true