# Linux and VirtualBox snippets
## How to extend image size and partition
1. In VirtualBox, go to File -> Virtual Media manager  
2. Choose image file and extend to needed image size  
TODO pic  
3. Start Ubuntu and go to Apps -> Utilities -> disks  
4. Choose Partitions (primary or logical) used by US (ext.4) and choose resize  
5. Disk (or `df -H`) usage should show new available space  

## Setup of shared folder (with host OS)
1. Install guest additions on Ubuntu: `sudo apt-get install virtualbox-guest-additions-iso`
2. Add shared folder device in VirtualBox -> Settings -> shared folder
3. run `sudo mount -t vboxsf <sharedDeviceName> ~/<targetFolder>`

## Remove old packages
Run `sudo apt-get autoremove --purge`  
