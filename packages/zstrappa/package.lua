return {
  name    = "zstrappa",
  version = "2.1",
  summary = "Install Haliade OS from the live ISO to a target device",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zstrappa/zstrappa-2.1.tar.gz",
  sha256  = "7bbbdf7bd5bd52229bd3ce836c65fab0bcaff21d7745454aaac8ec656845471c",
  deps    = { "bash", "btrfs-progs", "util-linux", "dosfstools", "limine", "rsync" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zstrappa")
  end,
}
