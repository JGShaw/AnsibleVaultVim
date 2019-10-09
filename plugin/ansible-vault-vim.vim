function AnsibleVaultEdit()
  execute "silent !clear; ansible-vault edit --vault-password-file " . g:AnsibleVaultPasswordFile . " " . '%:p'
  redraw!
endfunction

function AnsibleVaultView()
  execute "!clear; ansible-vault view --vault-password-file " . g:AnsibleVaultPasswordFile . " " . '%:p'
endfunction
