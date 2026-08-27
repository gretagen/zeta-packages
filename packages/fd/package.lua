return {
  name    = "fd",
  version = "10.2.0",
  summary = "Simple find alternative",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/fd/fd-10.2.0.tar.gz",
  sha256  = "58001e455865a45ac42893479ef0d72e01bf6e6ca1b83758d82d383bdf9e466b",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fd")
  end,
}
