# linux_cmd_lines

Some useful linux command lines

# Files

#### To sort all files in dir+subdir by access datetime
``` bash
find . -type f -printf "%A@ %Ac %p\n" | sort -n | tail -5
```

#### To sort all files in dir+subdir by modification datetime
``` bash
find . -type f -printf "%T@ %Tc %p\n" | sort -n | tail -5
```

# SMB

#### List files on smb remote
``` bash
smbclient -L //server --user username
```

#### Copy a whole remote dir 
``` bash
smbclient '\\server\folder' --user username -c "prompt OFF;recurse ON;cd "path/to/folder/";mget *"
```

#### Mount smb folder to local mount point
``` bash
sudo mount -t cifs -o username=username //server/folder /mnt/folder --verbose
```

# Nvidia

Restart nvidia module
``` bash
sudo rmmod nvidia_uvm
sudo modprobe nvidia_uvm
```