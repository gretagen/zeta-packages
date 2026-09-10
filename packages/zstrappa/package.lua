return {
  name    = "zstrappa",
  version = "1.5",
  summary = "Install Haliade OS from the live ISO to a target device",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zstrappa/zstrappa-1.5.tar.gz",
  sha256  = "e4c496d73f9385f39e5cfc87eeda055816736acc04e6c8708e92d4ab280c8988",
  deps    = { "bash", "btrfs-progs", "util-linux", "dosfstools", "limine", "rsync" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zstrappa")
  end,
}
