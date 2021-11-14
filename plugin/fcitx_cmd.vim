" after leave cmdline switch to english input
function! Fcitx2encmd()
   let s:input_status = system("fcitx-remote")
   if s:input_status == 2
      let l:a = system("fcitx-remote -c")
   endif
endfunction
autocmd CmdLineLeave * silent call Fcitx2encmd()
