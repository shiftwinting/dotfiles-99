let g:ale_ruby_rubocop_executable = '/Users/leandro/.asdf/shims/bundle'

" Run only save the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

" Run only the linters configured below
let g:ale_linters_explicit = 1
let g:ale_linters = {
\   'javascript': ['standard', 'jscs', 'jshint'],
\   'ruby': ['rubocop']
\}

" Run only in patterns configured below
let g:ale_pattern_options_enabled = 1
let g:ale_pattern_options = {
\ 'facil123\/jest\.config\.js$': {'ale_linters': ['standard']},
\ 'facil123\/app\/javascript\/src\/components\/.*\.js$': {'ale_linters': ['standard']},
\ 'facil123\/app\/javascript\/src\/services\/.*\.js$': {'ale_linters': ['standard']},
\ 'facil123\/app\/javascript\/src\/scenes\/.*\.js$': {'ale_linters': ['standard']},
\ 'facil123\/app\/javascript\/src\/store\/.*\.js$': {'ale_linters': ['standard']},
\ 'facil123\/app\/javascript\/src\/.*\/.*\.js$': {'ale_linters': ['jscs', 'jshint']},
\ 'facil123\/spec\/javascripts\/.*\/.*\.js$': {'ale_linters': ['jscs', 'jshint']},
\ 'facil123\/app\/.*\.rb$': {'ale_linters': ['rubocop']},
\ '\.js$': {'ale_linters': [], 'ale_fixers': []}
\}
