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
`launch` | Lauches image with using default (auto-detected) VM.
`createImage` | Downloads and creates new image on local computer from remote site based on template name.
`deleteImage` | Deletes image from computer, including local image directory content.
`updateVM` | Updates VM executable, including depedent libs to latest version from remote site.
`deleteVM` | Deletes VM executable from local computer, including dependencies.
`showVMDir` | Prints directory path of given VM.

## Configuration commands
This lists just bare minimum subset of config options for now.
Command | Description
------- | -----------
`templateSourcesDir` | Prints, sets directory path where file with template sources is located.
`templateSoucesUrl` | Prints, sets https URL, where template sources can be fetched remote site (official).
`imageInitScriptsDir` | todo.


# Description of Pharo Launcher commands  
## Help command  
```

This is help for command line interface for Pharo Launcher.
Common purpose of laucher is to create Pharo image locally from remote site template, lauch Pharo, eventually delete image, update VMs, etc.


### Usage  
### Parameters  
### Options  
```

