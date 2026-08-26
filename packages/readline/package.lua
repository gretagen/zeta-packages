return {
  name    = "readline",
  version = "8.3",
  summary = "GNU Readline library for line editing and history",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/readline/readline-8.3.tar.gz",
  sha256  = "63f709fbf0253bf7683fb5c7b99cd49e7b89f196b5a4a028c13ce25eafb4b00c",
  deps    = { "ncurses" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libreadline.so.8")
  end,
}
