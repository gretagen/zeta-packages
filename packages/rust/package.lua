return {
  name    = "rust",
  version = "1.98.0",
  summary = "Systems programming language (rustc, cargo, rustfmt, clippy, rustdoc)",
  url     = "https://files.spectoria.dev/zeta-monsters/rust-1.98.0.tar.gz",
  sha256  = "f768569953234ae48f1c6b178d5f9a234744e40d4632680da358fb4f24700fd8",
  deps    = { "glibc", "llvm-libs", "lld", "compiler-rt", "libcurl", "libgit2", "libssh2", "openssl", "sqlite", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/rustc")
  end,
}
