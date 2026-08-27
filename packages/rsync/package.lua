return {
  name    = "rsync",
  version = "3.4.1",
  summary = "Remote file sync",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/rsync/rsync-3.4.1.tar.gz",
  sha256  = "076b142787a46308b6134601fa78cdb2b0d16c07df70c559127b343da7db701b",
  deps    = { "glibc", "zstd", "lz4", "openssl", "libz", "brotli" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/rsync")
  end,
}
