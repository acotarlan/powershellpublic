
#CopyFilesToExternalDisk.ps1
#Copyright 2024 Alex Cotarlan

#This product includes software developed at groktrain.com 

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.




#Set logging directory 
$logPath = "C:\Automation\Logs"

#Create logging directory
if (-Not (Test-Path $logPath)) {
    New-Item -Path $logPath -ItemType Directory
}

#Set log file name 
$logFile = "$logPath\CopyFilesToExternalDisk.txt"

#Determine current user prefixed by current computer name
$USERPATH=$(Get-CimInstance Win32_ComputerSystem | select username).username

#Determine current user 
$USERN=$env:username


#Replace below with your root destination folder. Make sure is the correct allocated letter for destination disk/partition
$DESTFOLDER="D:\\Backups\\$USERPATH"


#Create $DESTFOLDER
if (-Not (Test-Path $DESTFOLDER)) {
    New-Item -Path $DESTFOLDER -ItemType Directory
}

#Define source directories to be copied 
$documents_path = "C:\\Users\$USERN\\Documents"
$pictures_path = "C:\\Users\\$USERN\\Pictures"
$downloads_path = "C:\\Users\\$USERN\\Downloads"
$music_path = "C:\\Users\\$USERN\\Music"
$videos_path = "C:\\Users\\$USERN\\Videos"
$desktop_path = "C:\\Users\\$USERN\\Desktop"

#Log the future actions
"$(Get-Date) - Logging run for Copy-Item -Path  $documents_path -Destination $DESTFOLDER -Recurse" | Out-File -FilePath $logFile -Append
"$(Get-Date) - Logging run for Copy-Item -Path  $pictures_path  -Destination $DESTFOLDER -Recurse" | Out-File -FilePath $logFile -Append
"$(Get-Date) - Logging run for Copy-Item -Path  $downloads_path -Destination $DESTFOLDER -Recurse" | Out-File -FilePath $logFile -Append
"$(Get-Date) - Logging run for Copy-Item -Path  $music_path     -Destination $DESTFOLDER -Recurse" | Out-File -FilePath $logFile -Append
"$(Get-Date) - Logging run for Copy-Item -Path  $videos_path    -Destination $DESTFOLDER -Recurse" | Out-File -FilePath $logFile -Append
"$(Get-Date) - Logging run for Copy-Item -Path  $desktop_path   -Destination $DESTFOLDER -Recurse" | Out-File -FilePath $logFile -Append

#Uncomment from below lines to copy what you need
#Copy-Item -Path  $documents_path -Destination $DESTFOLDER -Recurse 
#Copy-Item -Path  $pictures_path  -Destination $DESTFOLDER -Recurse  
#Copy-Item -Path  $downloads_path -Destination $DESTFOLDER -Recurse
#Copy-Item -Path  $music_path     -Destination $DESTFOLDER -Recurse 
#Copy-Item -Path  $videos_path    -Destination $DESTFOLDER -Recurse 
#Copy-Item -Path  $desktop_path   -Destination $DESTFOLDER -Recurse