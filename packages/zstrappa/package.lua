return {
  name    = "zstrappa",
  version = "1.0",
  summary = "Install Heliade OS from the live ISO to a target device",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zstrappa/zstrappa-1.0.tar.gz",
  sha256  = "54668f57f3b8a817ae6fd58f42d44e569678f1d060c21e436fc525bed7e11a59",
  deps    = { "bash", "btrfs-progs", "util-linux", "dosfstools", "limine", "rsync" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zstrappa")
  end,
}
