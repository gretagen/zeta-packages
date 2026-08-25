return {
  name    = "perl",
  version = "5.42.3",
  summary = "Perl interpreter (provided by the base system; stub package)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/perl/perl-5.42.3.tar.gz",
  sha256  = "b2bbe28750514a3d74f19c306d6118e9483503a17a52701da40bf5345351f1b8",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root)
  end,
}
