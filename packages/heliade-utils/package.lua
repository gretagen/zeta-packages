return {
  name    = "heliade-utils",
  version = "1.0",
  summary = "Heliade OS utility scripts (metapackage)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/heliade-utils/heliade-utils-1.0.tar.gz",
  sha256  = "d73d6bf3cafaacfb73c3f092bdc9dea28d8e209e36e98be09590979704e73830",
  deps    = { "genzee", "genkernel", "subspace-scripts", "zstrappa" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/doc/heliade-utils/README")
  end,
}