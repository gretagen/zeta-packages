return {
  name    = "pluma",
  version = "1.28.0",
  summary = "MATE text editor",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/pluma/pluma-1.28.0.tar.gz",
  sha256  = "7964d4715666cb47b8e6c049b519a8ae1162bafb2a96e7344692811eba8b4ea2",
  deps    = { "glibc", "gtk3", "gtksourceview4", "mate-desktop", "libpeas", "libxml2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/pluma -a -f " .. p.install_root .. "/usr/lib/pluma/plugins/libdocinfo.so")
  end,
}
