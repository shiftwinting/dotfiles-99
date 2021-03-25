if has('nvim-0.5')
lua << EOF
local lspconfig = require'lspconfig'

lspconfig.tsserver.setup{}
lspconfig.cssls.setup{}
lspconfig.solargraph.setup{
  settings = {
    solargraph = {
      useBundler = true,
    }
  }
}
lspconfig.jsonls.setup{
  settings = {
    json = {
      schemas = {
        {
          description = 'Renovate',
          fileMatch = {'renovate.json'},
          url = 'https://docs.renovatebot.com/renovate-schema.json'
        },
        {
          description = 'JSON schema for NPM package.json files',
          fileMatch = {'package.json'},
          url = 'https://json.schemastore.org/package.json'
        },
        {
          description = 'TypeScript compiler configuration file',
          fileMatch = {'tsconfig.json', 'tsconfig.*.json'},
          url = 'https://json.schemastore.org/tsconfig'
        },
        {
          description = 'Lerna config',
          fileMatch = {'lerna.json'},
          url = 'https://json.schemastore.org/lerna'
        },
        {
          description = 'Babel configuration',
          fileMatch = {'.babelrc.json', '.babelrc', 'babel.config.json'},
          url = 'https://json.schemastore.org/lerna'
        },
        {
          description = 'ESLint config',
          fileMatch = {'.eslintrc.json', '.eslintrc'},
          url = 'https://json.schemastore.org/eslintrc'
        },
        {
          description = 'Prettier config',
          fileMatch = {'.prettierrc', '.prettierrc.json', 'prettier.config.json'},
          url = 'https://json.schemastore.org/prettierrc'
        },
        {
          description = 'Vercel Now config',
          fileMatch = {'now.json'},
          url = 'https://json.schemastore.org/now'
        },
      }
    },
  }
}
lspconfig.gopls.setup{}
lspconfig.yamlls.setup{
  settings = {
    yaml = {
      schemas = {
        ['https://json.schemastore.org/github-workflow'] = '.github/workflows/*.{yml,yaml}',
        ['https://json.schemastore.org/github-action'] = '.github/action.{yml,yaml}',
        ['https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json'] = 'docker-compose.yml',
      }
    }
  }
}
lspconfig.dockerls.setup{}
EOF
endif
