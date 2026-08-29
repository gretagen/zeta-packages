return {
  name    = "fastwc",
  version = "0.1.0",
  summary = "A wc replacement that beats GNU wc - SIMD kernels, mmap, threads",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/fastwc/fastwc-0.1.0.tar.gz",
  sha256  = "f66d209be94600f88b6d5044817ddebb43e5a37d2aa7b8a435d47b33802a0e0e",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fastwc && printf 'a b c\\n' | " .. p.install_root .. "/usr/bin/fastwc -w | grep -q '3'")
  end,
}
