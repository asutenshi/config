# scoop install oh-my-posh zoxide
# Install-Module -Name Terminal-Icons -Repository PSGallery -Scope CurrentUser
# use powershell 7

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key "Ctrl+j" -Function NextSuggestion
Set-PSReadLineKeyHandler -Key "Ctrl+k" -Function PreviousSuggestion

Import-Module -Name Terminal-Icons

Set-Alias vi nvim

Set-Alias ls Get-ChildItem

oh-my-posh init pwsh --config "C:\Users\tenshi\.config\oh-my-posh\json.omp.json" | Invoke-Expression

Invoke-Expression (& { (zoxide init powershell | Out-String) })

Remove-Alias cd -Force

function cd {
  z @args
}
