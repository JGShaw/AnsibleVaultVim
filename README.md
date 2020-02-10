# AnsibleVaultVim
Makes working on ansible vault files much simplier in Vim by automatically (or manually) handling the encryption of vault files.

## Installation
Install the plugin using your favourite plugin manager, for example:
```
Plug 'JGShaw/AnsibleVaultVim'
```

Add the following to your `.vimrc`, making sure to configure the vault password file name:
```
let g:AnsibleVaultVimPasswordFile = "vault password file name"
let g:AnsibleVaultVimAutomatic = true
nmap <silent> <leader>avv :AnsibleVaultView<CR>
nmap <silent> <leader>ave :AnsibleVaultEdit<CR>
```

## Usage

### Automatic
In automatic mode you should not need to use Vim differently when working on encrypted files, this feature is experimental and has not been tested on different operating systems so may have limited usage.

### Manual
This plugin adds two functions for interacting with ansible vault files. Open a vault file and run on the of following functions:
- `AnsibleVaultView()` - prints the contents of the fault and waits for the user to press enter to close it and return to the raw vault file. This is bound to `<leader>avv` in the default installation instructions.

- `AnsibleVaultEdit()` - opens the vault file for editing just as `ansible-vault edit` would. Assuming that your editor is vim, it will open a new instance of vim infront of your existing one. Edit the vault file, then save and close the new vim to get back to the original session. This is bound to `<leader>ave` in the default installation instructions.

## Contributing
Issue a pull request to https://github.com/JGShaw/AnsibleVaultVim
