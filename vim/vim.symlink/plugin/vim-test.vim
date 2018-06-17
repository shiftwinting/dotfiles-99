let test#strategy = 'terminal'
let test#javascript#karma#file_pattern = '\v_spec_js$'

nmap <silent> <leader>n :TestNearest<CR>
nmap <silent> <leader>f :TestFile<CR>
nmap <silent> <leader>s :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>t :TestVisit<CR>
