return {
  name    = "util-linux",
  version = "2.42",
  summary = "Essential Linux system utilities (mount, losetup, fdisk, blkid, hwclock, agetty, etc.)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/util-linux/util-linux-2.42.tar.gz",
  sha256  = "2ad909a915013fe30662f2631c85bc4c8a241bf152b8922004103cba69083a68",
  deps    = { "systemd-libs", "pam", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/mount && test -x " .. p.install_root .. "/usr/sbin/losetup && test -x " .. p.install_root .. "/usr/sbin/agetty")
  end,
}
