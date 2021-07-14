local lspconfig = require'lspconfig'
local lsp_signature = require"lsp_signature"

local function on_attach()
  lsp_signature.on_attach({ hint_enable = false })
end
local flags = { debounce_text_changes = 150 }

lspconfig.tsserver.setup{
  on_attach = function(client)
    client.resolved_capabilities.document_formatting = false
    on_attach()
  end,
  flags = flags,
}
lspconfig.cssls.setup{
  on_attach = on_attach,
  flags = flags
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
  },
  on_attach = on_attach,
  flags = flags
}
lspconfig.gopls.setup{
  on_attach = on_attach,
  flags = flags
}
lspconfig.yamlls.setup{
  settings = {
    yaml = {
      schemas = {
        ['https://json.schemastore.org/github-workflow'] = '.github/workflows/*.{yml,yaml}',
        ['https://json.schemastore.org/github-action'] = '.github/action.{yml,yaml}',
        ['https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json'] = 'docker-compose.yml',
      }
    }
  },
  on_attach = on_attach,
  flags = flags
}
lspconfig.dockerls.setup{
  on_attach = on_attach,
  flags = flags
}
lspconfig.solargraph.setup{
  on_attach = on_attach,
  flags = flags,
  settings = {
    solargraph = {
      useBundler = true
    }
  }
}
lspconfig.diagnosticls.setup({
  filetypes={
    'javascript',
    'typescript',
    'javascriptreact',
    'typescriptreact',
  },
  init_options = {
    filetypes = {
      javascript = 'eslint',
      typescript = 'eslint',
      javascriptreact = 'eslint',
      typescriptreact = 'eslint',
    },
    formatters = {
      prettier = {
        command = './node_modules/.bin/prettier',
        rootPatterns = {'package.json'},
        args = {
          '--stdin-filepath',
          '%filepath',
        }
      }
    },
    formatFiletypes = {
      javascript = 'prettier',
      typescript = 'prettier',
      javascriptreact = 'prettier',
      typescriptreact = 'prettier'
    },
    linters = {
      eslint = {
        command = './node_modules/.bin/eslint',
        rootPatterns = {'package.json'},
        args = {
          '--stdin',
          '--stdin-filename',
          '%filepath',
          '--format',
          'json'
        },
        sourceName = 'eslint',
        parseJson = {
          errorsRoot = '[0].messages',
          line = 'line',
          column = 'column',
          endLine = 'endLine',
          endColumn = 'endColumn',
          message = '${message} [${ruleId}]',
          security = 'severity'
        },
        securities = {
          [2] = 'error',
          [1] = 'warning',
        },
      },
    },
  },
  on_attach = on_attach,
  flags = flags
})
