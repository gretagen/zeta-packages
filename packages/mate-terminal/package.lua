return {
  name    = "mate-terminal",
  version = "1.28.1",
  summary = "MATE terminal",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mate-terminal/mate-terminal-1.28.1.tar.gz",
  sha256  = "b6cf254753a0169b1aed0904215ba0662e8df3dd8f3caa11b7490a466b37ba0b",
  deps    = { "glibc", "glib", "gtk3", "vte", "libdconf", "libSM", "libICE", "libX11" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/mate-terminal")
  end,
}
