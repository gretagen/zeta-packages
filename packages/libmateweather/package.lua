return {
  name    = "libmateweather",
  version = "1.28.0",
  summary = "MATE library to access weather information",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libmateweather/libmateweather-1.28.0.tar.gz",
  sha256  = "c70a1d413ed0b3805515b3da463e8101fea2bc940ab8a981cd775e8447907c86",
  deps    = { "glibc", "glib", "gtk3", "libxml2", "libsoup2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libmateweather.so")
  end,
}
