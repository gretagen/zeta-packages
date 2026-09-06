return {
  name    = "base",
  version = "1.0",
  summary = "Heliade OS base system (metapackage)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/base/base-1.0.tar.gz",
  sha256  = "d92beb32e216833d1916e7d1138a3c87d39587b383479429994aad5fc03395e0",
  deps    = { "glibc", "gcc", "openrc", "heliade-utils", "bash", "coreutils", "tar", "squashfs-tools", "lua", "cfdisk", "bubblewrap", "util-linux", "zeta" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/doc/base/README")
  end,
}
