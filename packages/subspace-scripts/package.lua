return {
  name    = "subspace-scripts",
  version = "1.0.1",
  summary = "Zerene OS subspace management scripts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/subspace-scripts/subspace-scripts-1.0.1.tar.gz",
  sha256  = "c6b61a9567c670a3e8f6882b25d22fef91484ab499cf29908da36c6161d2a9d6",
  deps    = { "bash", "bubblewrap" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/subspace-cli && test -x " .. p.install_root .. "/subspace/subspace-enter")
  end,
}
