return {
  name    = "zstrappa",
  version = "1.0",
  summary = "Install Heliade OS from the live ISO to a target device",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zstrappa/zstrappa-1.0.tar.gz",
  sha256  = "bbbbf97c31bd7bfc2af65726049cb0574036f190277097594993ad6459e506e8",
  deps    = { "bash", "btrfs-progs", "util-linux", "dosfstools", "limine", "rsync" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zstrappa")
  end,
}
