return {
  name    = "impala",
  version = "0.9.0",
  summary = "TUI for managing wifi on Linux (iwd client)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/impala/impala-0.9.0.tar.gz",
  sha256  = "967681f69b2249acbc3edaca3b5ae099b081bbf61379b4760841952a15c915b4",
  arch    = "x86_64",
  deps    = { "glibc", "gcc", "iwd", "dbus" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/impala && " .. p.install_root .. "/usr/bin/impala --version | grep -q '0.9.0'")
  end,
}
