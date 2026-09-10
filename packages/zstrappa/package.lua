return {
  name    = "zstrappa",
  version = "2.0",
  summary = "Install Haliade OS from the live ISO to a target device",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zstrappa/zstrappa-2.0.tar.gz",
  sha256  = "fef97dad9c45e11feb31f035f911f94f5e68e7a64b29f2cf32678319130c3057",
  deps    = { "bash", "btrfs-progs", "util-linux", "dosfstools", "limine", "rsync" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zstrappa")
  end,
}
