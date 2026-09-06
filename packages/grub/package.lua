return {
  name    = "grub",
  version = "2.14",
  summary = "GNU GRand Unified Bootloader (BIOS + EFI)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/grub/grub-2.14.tar.gz",
  sha256  = "ed0085920eb83d2cdc0ad183fddd5fa41f3237e106c29bf140f167321f4133b9",
  deps    = { "glibc", "device-mapper", "xz-utils", "systemd-libs", "gcc", "freetype", "libfuse3", "libpng", "libz", "bzip2", "brotli" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/grub-install -a -f " .. p.install_root .. "/usr/lib/grub/x86_64-efi/modinfo.sh -a -f " .. p.install_root .. "/usr/lib/grub/i386-pc/lnxboot.img")
  end,
}
