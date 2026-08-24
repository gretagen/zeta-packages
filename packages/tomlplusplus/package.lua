return {
  name    = "tomlplusplus",
  version = "3.4.0",
  summary = "TOML config file parser for C++17 (headers + shared library)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/tomlplusplus/tomlplusplus-3.4.0.tar.gz",
  sha256  = "236ff9b01127f70dfb421f2850c0c05e923eaec8e56834a7bfa53a8001df1cda",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libtomlplusplus.so.3")
  end,
}
