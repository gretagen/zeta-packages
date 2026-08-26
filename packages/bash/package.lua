return {
  name    = "bash",
  version = "5.3",
  summary = "GNU Bourne-Again SHell",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/bash/bash-5.3.tar.gz",
  sha256  = "2937c03bdb28fc5529fcbbb43a840ba6c4320d797b9500eccbf5c56342b59d3c",
  deps    = { "ncurses" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/bash")
  end,
}
