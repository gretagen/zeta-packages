return {
  name    = "base",
  version = "1.0",
  summary = "Zerene OS base system (metapackage)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/base/base-1.0.tar.gz",
  sha256  = "f8d6f138e85df94a4ccbb8a0f376af4fcdc29698bbc5a5e44e98bfa6288b9885",
  deps    = { "glibc", "gcc", "openrc", "heliade-utils", "bash", "coreutils", "tar", "squashfs-tools", "lua", "cfdisk", "bubblewrap", "util-linux", "zeta" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/doc/base/README")
  end,
}
