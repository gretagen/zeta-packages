return {
  name    = "zstrappa",
  version = "1.4",
  summary = "Install Haliade OS from the live ISO to a target device",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zstrappa/zstrappa-1.4.tar.gz",
  sha256  = "2457adf258a893b1c2e26f304cee11f2b8fffe970aa63cf0e0dad0fe2cedb084",
  deps    = { "bash", "btrfs-progs", "util-linux", "dosfstools", "limine", "rsync" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zstrappa")
  end,
}
