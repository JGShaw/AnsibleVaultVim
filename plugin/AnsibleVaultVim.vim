command! -nargs=0 AnsibleVaultEdit call s:ansible_vault_edit()
command! -nargs=0 AnsibleVaultView call s:ansible_vault_view()

function s:ansible_vault_edit()
  execute "silent !clear; ansible-vault edit --vault-password-file " . g:AnsibleVaultVimPasswordFile . " " . '%:p'
  redraw!
endfunction

function s:ansible_vault_view()
  execute "!clear; ansible-vault view --vault-password-file " . g:AnsibleVaultVimPasswordFile . " " . '%:p'
endfunction

