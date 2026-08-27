return {
  name = "fastfetch",
  version = "2.66.0",
  summary = "Fast, feature-rich system information fetcher (neofetch successor)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/fastfetch/fastfetch-2.66.0.tar.gz",
  sha256 = "851d9fe059068b630af392ee79409de1b90e620e2756c1411e84348a85399efd",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/fastfetch --version")
  end,
}
