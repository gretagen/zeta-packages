return {
  name    = "linux-bin",
  version = "7.1.10",
  summary = "Zerene OS kernel 7.1.10-gen (modules included)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/linux-bin/linux-bin-7.1.10.tar.gz",
  sha256  = "4cc07eb6bf39b0af90eae1ed120b4c0a5d8913d3cd5e094a9c92ae169ae27c2c",
  deps    = {  },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/boot/vmlinuz-7.1.10-gen")
  end,
}
