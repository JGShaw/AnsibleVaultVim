function ReadVaultContents()
  silent %!ansible-vault view --vault-password-file .vault %:p
endfunction

function WriteVaultContents()
  let b:editor="vim -c 'normal :set pasteggVGxi" . join(getline(1, '$'), "") . ":wq'"
  execute "silent !clear; EDITOR=\"" . b:editor . "\" ansible-vault edit --vault-password-file " . g:AnsibleVaultVimPasswordFile . " " . @%
  set nomodified
  redraw!
  set term=xterm-256color
endfunction

if g:AnsibleVaultVimAutomatic == 1 && getline(1) =~ "$ANSIBLE_VAULT*"
  call ReadVaultContents()
  autocmd BufWriteCmd <buffer> :call WriteVaultContents()
endif
