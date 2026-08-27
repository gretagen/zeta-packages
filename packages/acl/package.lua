return {
  name    = "acl",
  version = "1.1.2302",
  summary = "Access control list library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/acl/acl-1.1.2302.tar.gz",
  sha256  = "958f5ab2f4bc520f12a4b37e9fa7b8b246c40141588897ba791477f429091ae1",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libacl.so.1")
  end,
}
