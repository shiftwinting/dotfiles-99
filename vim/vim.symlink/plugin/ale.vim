let g:ale_ruby_rubocop_executable = '/Users/leandro/.asdf/shims/bundle'

" Run only save the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

" Run only the linters configured below
let g:ale_linters = {
\   'javascript': ['standard', 'jscs', 'jshint'],
\   'ruby': ['rubocop']
\}
let g:ale_linters_explicit = 1
