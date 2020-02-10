function ReadVaultContents()
  silent %!ansible-vault view --vault-password-file .vault %:p
  set filetype="ENCRYPTED yaml.ansible"
endfunction

function WriteVaultContents()
  let b:editor="vim -c 'normal :set paste^MggVGxi" . join(getline(1, '$'), "^M") . "^[:wq^M'"
  execute "silent !clear; EDITOR=\"" . b:editor . "\" ansible-vault edit --vault-password-file " . g:AnsibleVaultVimPasswordFil
  set nomodified
  redraw!
  set term=xterm-256color
endfunction

if getline(1) =~ "$ANSIBLE_VAULT*"
  call ReadVaultContents()
  autocmd BufWriteCmd <buffer> :call WriteVaultContents()
endif
