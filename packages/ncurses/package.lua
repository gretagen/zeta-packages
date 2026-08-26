return {
  name    = "ncurses",
  version = "6.6",
  summary = "System V Release 4.0 curses library and utilities",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/ncurses/ncurses-6.6.tar.gz",
  sha256  = "a67eeeae758e188a631e6f837b14f88145a3b4ec7210e16dd388bfb286722ff7",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/clear && test -e " .. p.install_root .. "/usr/lib/libncursesw.so")
  end,
}
