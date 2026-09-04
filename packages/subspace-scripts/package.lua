return {
  name    = "subspace-scripts",
  version = "1.1.0",
  summary = "Zerene OS subspace management scripts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/subspace-scripts/subspace-scripts-1.1.0.tar.gz",
  sha256  = "a0f6cf98b3fde4a94cd6087783a7108552442c06cf7cb0b575a9c2bab0953981",
  deps    = { "bash", "bubblewrap" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/subspace-cli && test -x " .. p.install_root .. "/subspace/subspace-enter && test -x " .. p.install_root .. "/subspace/subspace-sync")
  end,
}
