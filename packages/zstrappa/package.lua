return {
  name    = "zstrappa",
  version = "1.2",
  summary = "Install Haliade OS from the live ISO to a target device",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zstrappa/zstrappa-1.2.tar.gz",
  sha256  = "1ecfe9b1c8d93c487af79571360305b87b5fc28da6a1c70f748d150e119a2b19",
  deps    = { "bash", "btrfs-progs", "util-linux", "dosfstools", "limine", "rsync" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zstrappa")
  end,
}
