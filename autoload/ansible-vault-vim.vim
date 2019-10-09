function ansible-vault-vim#AnsibleVaultEdit()
  execute "silent !clear; ansible-vault edit --vault-password-file " . g:AnsibleVaultPasswordFile . " " . '%:p'
  redraw!
endfunction

function ansible-vault-vim#AnsibleVaultView()
  execute "!clear; ansible-vault view --vault-password-file " . g:AnsibleVaultPasswordFile . " " . '%:p'
endfunction
