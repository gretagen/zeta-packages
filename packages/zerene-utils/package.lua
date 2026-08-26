return {
  name    = "zerene-utils",
  version = "1.0",
  summary = "Zerene OS utility scripts (metapackage)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/zerene-utils/zerene-utils-1.0.tar.gz",
  sha256  = "f0f3bf4c8e7867e1603a04278f810a2cc912d615375b263151731735e2f90f7c",
  deps    = { "genzee", "genkernel", "subspace-scripts", "zstrappa" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/doc/zerene-utils/README")
  end,
}
