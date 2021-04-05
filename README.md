# Pharo-snippets
Pharo Project code snippets and useful hints. Some topics here:  
  * [Concurrent programming hints](./concurrent-programming.md)


# Setting up Github environment
## Step 1: SSH keys on Github
* Generate new public/private key pair if needed: https://help.github.com/articles/generating-an-ssh-key/
* Open Configuration on Github: User -> Settings -> SSH and GPG keys
![SSH keys - Github](ssh_keys_github.png)



## Step 2: SSH keys and other settings for Iceberg in Pharo
Open configuration of Iceberg tool (World menu > Tools > Iceberg > click Settings icon) and set:
- local path to ssh keys:  
![Pharo settings - Iceberg](pharo_settings_ssh_keys.png)
- set Default Code Subdirectory to: 'src'
- set File format type to: 'Tonel'

## Step 3: Set local path to image directory
Open system configuration from World menu > Pharo > Settings > System tab > Local Directory > click directory icon and navigate to path, where directory with image is located

![Pharo-settings](2021-04-04%2019_42_25-Window.png)

## Step 4: Create new (or use existing) Github repository
![Github-new-repo](2021-04-04%2019_51_58-Clipboard.png)

## Step 5: Clone repository in Iceberg from Github
- Open Iceberg and click '+' add icon
- Choose "Clone from Github.com"
- Set your name from Github and type repository name you want to clone
- Choose "HTTPS" and click Ok  
![Github-clone-Github-repo](2021-04-04%2020_00_44-CloneRepo.png)

## Step 6: Repair metadata of empty repository
After cloning, you'll see project in Iceberg in state, where project metadata (how packages, classes are organized in repo) are missing. State "No project found" will be on line with cloned repo.  
![Github-clone-Github-repo](2021-04-04%2020_42_23-Repair-repo.png)
- Choose "Repair repository" in context menu (right-click on repo)
- Select "Create project meta-data" and click ok
- Choose Format "Tonel" instead of Filetree and then ok

## Step 7: Add packages, package extensions to your repository
- Select your repo and right-click again, Choose "Packages"  
![Github-clone-Github-repo](2021-04-04%2020_52_42-add-packages.png)

- Click '+' icon to add your packages (including extenstions) to your repo
- Select desired packages and then ok

## Step 8: Commit and push changes
- Right click on your repo and choose "Commit"  
- Type message to your commit, review changes  
- Select "Push changes to origin/main"  
![Commit-changes](2021-04-04%2021_00_37-commit.png)  
- Type missing git properties (Github name, email)  
![Git-properties](2021-04-04%2021_02_02-git-credentials.png)  
**That's it! Check your changes on Gihtub.**  

## Step 9: Define Baseline to load project dependencies (packages) in correct order (recommended)
- Define in repo BaselineOfMyProject class like this (where MyProject is name of your project):
```
BaselineOf subclass: #BaselineOfMyProject
	slots: {  }
	classVariables: {  }
	package: 'BaselineOfMyProject'
```
Tbd.



# Pharo IDE
Using dark UI theme: 
```
Metacello new 
    baseline: 'PharoDawnTheme';
    repository: 'github://sebastianconcept/PharoDawnTheme';
    load.
```
# Debugging / profiling
Finding all references: `self pointersTo: anObject` 
or use reference finder by: `ReferenceFinder findPathTo: #nil` 

# Pharo Projects 
## Pharo launcher 
To load: 
```
Metacello new
	repository: 'github://pharo-project/pharo-launcher:dev/src';
	baseline: 'PharoLauncher';
	load
```


## Installing Seaside and Bootstrap4
This should work with P8 stable 64 bit  
Load Bootstrap that will load Seaside as dependency: 
```
Metacello new
      baseline:'Bootstrap4';
      repository: 'github://astares/Seaside-Bootstrap4:master/src';
      load
```
### Installing standalone Seaside
TODO

### Installing standalone Bootstrap
TODO

## Installing Magritte
```
	Metacello new
    baseline:'Magritte';
    repository: 'github://magritte-metamodel/magritte:master';
	onConflictUseLoaded;
    load.
```
## Pharo Web Deployment
Deploying tips in AWS: http://forum.world.st/Getting-Pharo-running-on-AWS-td5117353.html  
https://pharoweekly.wordpress.com/2020/05/20/deployment-tips-from-the-pros/  
http://forum.world.st/running-Pharo8-in-Digitalocean-tt5115160.html  

Options to easily setup a custom server: running a virtual machine in Azure, AWS, Google Cloud or elsewhere usually only takes a few minutes.  So it's not different from other web deployments: run on a specific port and put a webserver like Apache, Nginx or other in front.  

Some more Seaside specific resources:
 - https://www.linode.com/docs/guides/deploy-smalltalk-applications-with-seaside/  
 - http://book.seaside.st/book/advanced/deployment/deployment-preparing  
 - https://ci.inria.fr/pharo-contribution/job/EnterprisePharoBook/lastSuccessfulBuild/artifact/book-result/DeploymentWeb/DeployForProduction.html  

You can also use docker to deploy (see http://wiki.astares.com/pharo/612)
