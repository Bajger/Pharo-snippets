#Introduction
Command line interface for Pharo Launcher.
Common purpose is to create Pharo image, lauch Pharo, delete image, update VMs, etc.

#List of pharo laucher commands
`help` -- Prints all supported commands.
`listVMs` -- lists all available VMs, with status  
`listImages` --lists all downloaded images on local computer  
`listTemplates` -- lists all image templates  
`listTemplateCategories` -- lists all image template categories, based on which are image templates categorized  
`imageInfo` -- prints information about image: name, description, origin template, etc.
`vmInfo` -- prints information about 

`launch <imageName>` -- lauches image with using default VM  
`createImage <templateName>` -- downloads and creates new image on local computer from remote site based on template name.
`deleteImage <imageName>` -- deletes image from computer, including local image directory content.
`updateVM <vmName>` -- Updates VM executable, including depedent libs to latest version from remote site.

#Description of Pharo Launcher commands.
##Help command  
##Usage  
##Parameters  
##Options  
