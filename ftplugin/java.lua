local jdtls = require("jdtls")
local home = os.getenv("HOME")

local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
local root_dir = require("jdtls.setup").find_root(root_markers)
if not root_dir then
  return
end

local workspace_folder = home .. "/.local/share/nvim/jdtls_ws/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

local bundles = {
  vim.fn.glob(
    home
      .. "/.local/share/nvim/mason/packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar",
    1
  ),
}

local config = {
  cmd = { "jdtls" },
  root_dir = root_dir,
  workspace_folder = workspace_folder,

  init_options = {
    bundles = bundles,
  },
}

jdtls.start_or_attach(config)

-- Setup DAP for Java
jdtls.setup_dap({ hotcodereplace = "auto" })
