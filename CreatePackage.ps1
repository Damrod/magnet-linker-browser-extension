$extension = Resolve-Path -LiteralPath "Extension\"
$zip = Join-Path (Get-Location).Path "magnet-linker-chromium-extension.zip"

print

 If (Test-path $zip) {
     Remove-item $zip
}

Add-Type -assembly "system.io.compression.filesystem"

[io.compression.zipfile]::CreateFromDirectory($extension, $zip) 