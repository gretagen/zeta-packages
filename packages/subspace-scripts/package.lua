return {
  name    = "subspace-scripts",
  version = "1.1.0",
  summary = "Heliade OS subspace management scripts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/subspace-scripts/subspace-scripts-1.1.0.tar.gz",
  sha256  = "bf78ae97f32a7d7a6a6e2ff23132739237058891a733a681001575e3dd4abc9c",
  deps    = { "bash", "bubblewrap" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/subspace-cli && test -x " .. p.install_root .. "/subspace/subspace-enter && test -x " .. p.install_root .. "/subspace/subspace-sync")
  end,
}
