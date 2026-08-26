return {
  name    = "genzee",
  version = "1.0",
  summary = "btrfs generation manager for Zerene OS (Limine boot entries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/genzee/genzee-1.0.tar.gz",
  sha256  = "0b564e46e24bc928bb5ceb7798ecfc5fa7a04f6389df1d34b947cd7b0a03cd0d",
  deps    = { "bash", "btrfs-progs", "util-linux" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/genzee")
  end,
}
