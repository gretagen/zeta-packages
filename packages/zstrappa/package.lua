return {
  name    = "zstrappa",
  version = "1.1",
  summary = "Install Haliade OS from the live ISO to a target device",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zstrappa/zstrappa-1.1.tar.gz",
  sha256  = "090ec3a5e2151ddf22618f5ee222314ed917d606918e5b8e9d0e9b7b2b51c45f",
  deps    = { "bash", "btrfs-progs", "util-linux", "dosfstools", "limine", "rsync" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zstrappa")
  end,
}
