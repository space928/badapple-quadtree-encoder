$filename="Touhou - Bad Apple.mp4"
if (!(Test-Path $filename)) {
    Write-Content "Downloading video from: https://archive.org/download/TouhouBadApple/Touhou%20-%20Bad%20Apple.mp4"
    Invoke-WebRequest "https://archive.org/download/TouhouBadApple/Touhou%20-%20Bad%20Apple.mp4" -OutFile $filename
}
ffmpeg -i ".\Touhou - Bad Apple.mp4" ".\badapple%04d.png"
Write-Content "Conversion succeeded!"
pause