return {
  name    = "ripgrep",
  version = "14.1.1",
  summary = "Recursive grep alternative",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/ripgrep/ripgrep-14.1.1.tar.gz",
  sha256  = "999c56ec2a59c39c492860ecf32968214fcb62ffbe3b29546a23895877c3e01f",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/rg")
  end,
}
