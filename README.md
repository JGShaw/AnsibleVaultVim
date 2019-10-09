# AnsibleVaultVim
Adds helper function to edit and view ansible vault files, through the use of the ansible-vault command line utilities.

## Usage
To use the plugin, you will need to have a vault password file at the same directory level as where vim was opened. A variable needs to be set with the name of this password file in your vimrc as follows:

```
let g:AnsibleVaultPasswordFile = "<<vault password file name>>"
```

This plugin adds two functions for interacting with ansible vault files. Open a vault file and run on the of following functions:
- `AnsibleVaultView()` - prints the contents of the fault and waits for the user to press enter to close it and return to the raw vault file.

- `AnsibleVaultEdit()` - opens the vault file for editing just as `ansible-vault edit` would. Assuming that your editor is vim, it will open a new instance of vim infront of your existing one. Edit the vault file, then save and close the new vim to get back to the original session.

It is reccomended to add mappings to run these function to your vimrc:
```
nmap <silent> <leader>avv :AnsibleVaultView<CR>
nmap <silent> <leader>ave :AnsibleVaultEdit<CR>
```

## Contributing
Issue a pull request to https://github.com/JGShaw/AnsibleVaultVim
