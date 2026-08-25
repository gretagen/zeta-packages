return {
  name    = "rtw89",
  version = "0.20260825",
  summary = "Realtek RTW89 wifi firmware blobs",
  url     = "https://files.spectoria.dev/zeta-monsters/rtw89-0.20260825.tar.gz",
  sha256  = "a2aad97e87de8147c6ea48663f9a53723eb308a2df625d987d6071b37aa3fd3e",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/firmware")
  end,
}
