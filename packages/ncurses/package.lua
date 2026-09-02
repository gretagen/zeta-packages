return {
  name    = "ncurses",
  version = "6.6",
  summary = "System V Release 4.0 curses library and utilities",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/ncurses/ncurses-6.6.tar.gz",
  sha256  = "355b4cbbed880b0381a04c46617b7656e362585d52e9cf84a67e2009b749ff11",
  deps    = { "glibc" },
  build   = function(p)
    p:run("./configure --prefix=/usr --with-shared --with-versioned-syms --enable-widec --enable-pc-files --with-pkg-config-libdir=/usr/lib/pkgconfig --with-termlib --without-debug --without-ada --with-cxx-binding --with-cxx-shared")
    p:run("make -j$(nproc)")
    p:run("DESTDIR=" .. p.install_root .. " make install")
  end,
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/clear")
    p:run("test -e " .. p.install_root .. "/usr/lib/libncursesw.so")
    p:run("! strings " .. p.install_root .. "/usr/lib/libncursesw.so.6.6 | grep -q /usr/var")
  end,
}
