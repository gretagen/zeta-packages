return {
  name    = "libreoffice-core",
  version = "26.2.4.2",
  summary = "LibreOffice runtime (soffice, VCL, bundled libs)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/libreoffice-core/libreoffice-core-26.2.4.2.tar.gz",
  sha256  = "e61650cfd6fd988bb4e83c8bbce107533fa67ae7b5de71c9f0e7c9bb68073a09",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libreoffice/program/soffice.bin")
  end,
}
