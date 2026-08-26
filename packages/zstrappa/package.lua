return {
  name    = "zstrappa",
  version = "1.0",
  summary = "Install Zerene OS from the live ISO to a target device",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zstrappa/zstrappa-1.0.tar.gz",
  sha256  = "0f1ca384a386d32eadeb239373cbcabff67497bff005c15699c7084ca7a95393",
  deps    = { "bash", "btrfs-progs", "util-linux", "dosfstools", "limine", "rsync" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zstrappa")
  end,
}
