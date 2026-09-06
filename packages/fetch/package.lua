return {
  name    = "fetch",
  version = "2.3.0",
  summary = "Animated 3D fetch tool for your terminal",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/fetch/fetch-2.3.0.tar.gz",
  sha256  = "dd38d6ecf646fd3b170d554ea0f18e170520bd2d22bf377a97d57704d4b4b93a",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fetch && test -x " .. p.install_root .. "/usr/bin/fetch.bin && test -f " .. p.install_root .. "/usr/share/fetch/config && test -f " .. p.install_root .. "/usr/share/fetch/logo.txt")
  end,
}
