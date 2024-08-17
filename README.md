This  Powershell Script will save personal folders to a backup drive . Make sure you update your actual source and destination paths 

1. For setting the Powershell Execution Policy:

Visit https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-7.4

2. Installing git from Powershell ( if not already installed )

2.1  Open powershell terminal window  

2.2 Run below in Powershell window

winget install --id Git. Git -e --source winget 


3.  Downloading this repository

Open powershell terminal window navigate to a work directory then run below to download 

git clone  https://github.com/acotarlan/powershellpublic.git

4. Set up Task Scheduler to run the Powershell script (CopyFilesToExternalDisk.ps1)  based on a desired  schedule


For setting the Powershell Execution Policy:

https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-7.4
