set expandtab
set tabstop=2
"set number
"set numberwidth=3

autocmd BufEnter * colorscheme default
autocmd BufEnter *.yml call Yaml_cfg()
autocmd BufEnter *.yaml call Yaml_cfg()

function Yaml_cfg()
  colorscheme desert
  hi Comment ctermfg=8
  hi LineNr ctermfg=11
  set number
  set numberwidth=3
endfunction
