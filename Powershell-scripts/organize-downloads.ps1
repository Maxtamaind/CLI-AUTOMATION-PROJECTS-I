Write-Host "Organizing Downloads folder..."

$downloads = "$env:USERPROFILE\Downloads"
$images = Join-Path $downloads "Images"
$documents = Join-Path $downloads "Documents"
$archives = Join-Path $downloads "Archives"

New-Item -ItemType Directory -Force -Path $images | Out-Null 
New-Item -ItemType Directory -Force -Path $documents | Out-Null
New-Item -ItemType Directory -Force -Path $archives | Out-Null

Get-ChildItem $downloads -Filter *.jpg | Move-Item -Destination $images -ErrorAction SilentlyContinue
Get-ChildItem $downloads -Filter *.png | Move-Item -Destination $images -ErrorAction SilentlyContinue
Get-ChildItem $downloads -Filter *.pdf | Move-Item -Destination $documents -ErrorAction SilentlyContinue
Get-ChildItem $downloads -Filter *.zip | Move-Item -Destination $archives -ErrorAction SilentlyContinue

Write-Host "Done!"
