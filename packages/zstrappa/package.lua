return {
  name    = "zstrappa",
  version = "2.4",
  summary = "Install Haliade OS from the live ISO to a target device",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zstrappa/zstrappa-2.4.tar.gz",
  sha256  = "da0005fe9583823e6bbe3d6ef9c2a66e728cb700fc5c5cd0d5cc9bee01985828",
  deps    = { "bash", "btrfs-progs", "util-linux", "dosfstools", "limine", "rsync" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zstrappa")
  end,
}
