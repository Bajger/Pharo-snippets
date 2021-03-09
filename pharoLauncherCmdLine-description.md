# Introduction  
Purpose of this document is to describe command line interface for Pharo launcher with description of necessary commands.  

# Overview of Pharo Laucher commands  
## Informative commands
Command | Description
------- | -----------
`help`  | Prints all supported commands.
`listVMs` | Lists all available VMs, with status.
`listImages` | Lists all downloaded images on local computer.
`listTemplates` | Lists all image templates. 
`listTemplateCategories` | lists all image template categories, based on which are image templates categorized.
`imageInfo` | Prints information about image: name, description, origin template, etc.
`vmInfo` | Prints information about VM.

## Action commands
Command | Description
------- | -----------
`launch <imageName>` | Lauches image with using default (auto-detected) VM.
`createImage <templateName>` | Downloads and creates new image on local computer from remote site based on template name.
`deleteImage <imageName>` | Deletes image from computer, including local image directory content.
`updateVM <vmName>` | Updates VM executable, including depedent libs to latest version from remote site.
`deleteVM <vmName>` | Deletes VM executable from local computer, including dependencies.

# Description of Pharo Launcher commands.
## Help command  
Command line interface for Pharo Launcher.
Common purpose is to create Pharo image, lauch Pharo, delete image, update VMs, etc.


### Usage  
### Parameters  
### Options  
