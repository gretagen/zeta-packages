return {
  name    = "genzee",
  version = "1.0",
  summary = "btrfs generation manager for Heliade OS (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/genzee/genzee-1.0.tar.gz",
  sha256  = "9151ad46c37246ab21a52eec09133fd025dde82a6494cef269d955fe0963e822",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/genzee")
  end,
}
