return {
  name    = "iptables",
  version = "1.8.13",
  summary = "Packet filtering and NAT toolset (iptables/ip6tables, libxtables)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/iptables/iptables-1.8.13.tar.gz",
  sha256  = "ace405b2b67d73036692ca5bc6a4038851a0ecd0cfd8ebefa61e15c092ef3695",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/iptables && test -x " .. p.install_root .. "/usr/sbin/ip6tables && test -e " .. p.install_root .. "/usr/lib/libxtables.so.12 && ls " .. p.install_root .. "/usr/sbin/*restore* >/dev/null")
  end,
}
