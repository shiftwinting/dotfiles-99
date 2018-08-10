let g:ale_ruby_rubocop_executable = '/Users/leandro/.asdf/shims/bundle'

" Run only save the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

" Run only the linters configured below
let g:ale_linters = {
\   'javascript': ['standard', 'jscs', 'jshint'],
\   'ruby': ['rubocop']
\}
let g:ale_fixers = {
\   'javascript': ['standard'],
\   'ruby': ['rubocop']
\}
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1

" Run only in patterns configured below
let g:ale_pattern_options = {
\ 'jest\.config\.js$': {'ale_linters': ['standard'], 'ale_fixers': ['standard']},
\ '\/src\/components\/.*\.js$': {'ale_linters': ['standard'], 'ale_fixers': ['standard']},
\ '\/src\/services\/.*\.js$': {'ale_linters': ['standard'], 'ale_fixers': ['standard']},
\ '\/src\/scenes\/.*\.js$': {'ale_linters': ['standard'], 'ale_fixers': ['standard']},
\ '\/src\/store\/.*\.js$': {'ale_linters': ['standard'], 'ale_fixers': ['standard']},
\ '\/javascripts\/.*\.js$': {'ale_linters': ['jscs', 'jshint']},
\ '\/javascript\/.*\.js$': {'ale_linters': ['jscs', 'jshint']},
\ '\.js$': {'ale_linters': [], 'ale_fixers': []}
\}
let g:ale_pattern_options_enabled = 1
