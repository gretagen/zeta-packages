return {
  name    = "neofetch",
  version = "7.1.0",
  summary = "Fast, highly customizable system info script",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/neofetch/neofetch-7.1.0.tar.gz",
  sha256  = "31141c582b343e6cec3d503984b80dec0186846565d6c6460842331f4c4ac621",
  deps    = { "bash", "pciutils" },
  archive = { strip = 1 },
  test    = function(p)
    p:run(p.install_root .. "/usr/bin/neofetch --version || true")
  end,
}
