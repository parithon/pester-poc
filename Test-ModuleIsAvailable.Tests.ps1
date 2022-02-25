Describe "Test-ModuleIsAvailable" {

    It "Should show warning if module is not available" {
        $moduleName = "FakeModule"
        Mock -CommandName Get-Module -Parameter { $Name -eq $moduleName } -MockWith {}
        Mock -CommandName Write-Warning -Verifiable -MockWith {}
        $sut = Test-ModuleIsAvailable $moduleName
        Should -InvokeVerifiable
        $sut | Should -BeFalse
    }

}