return {
  name    = "subspace-scripts",
  version = "1.0",
  summary = "Zerene OS subspace management scripts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/subspace-scripts/subspace-scripts-1.0.tar.gz",
  sha256  = "b602a7b03b4c43af128380ffa602bb095d8351eaf8de006f9b9bcb2e81d7cf05",
  deps    = { "bash", "bubblewrap" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/subspace-cli && test -x " .. p.install_root .. "/subspace/subspace-enter")
  end,
}
