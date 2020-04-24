# Pharo-snippets
Pharo Project code snippets and useful hints

# Setting up Github environment
## SSH keys on Github
* Generate new public/private key pair if needed: https://help.github.com/articles/generating-an-ssh-key/
* Open Configuration on Github: User -> Settings -> SSH and GPG keys
![SSH keys - Github](ssh_keys_github.png)



## SSH keys in Pharo
Open configuration of Iceberg tool and set local path:
![Pharo settings - Github](pharo_settings_ssh_keys.png)



# Pharo IDE
Using dark UI theme: 
```
Metacello new 
    baseline: 'PharoDawnTheme';
    repository: 'github://sebastianconcept/PharoDawnTheme';
    load.
```
