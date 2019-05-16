let g:ale_ruby_rubocop_executable = '/Users/leandro/.asdf/shims/bundle'

" Run only save the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_fix_on_save = 1

" Run only the linters configured below
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop']
\}
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop']
\}
let g:ale_linters_explicit = 1

if has('nvim')
  let g:ale_virtualtext_cursor = 1
endif
