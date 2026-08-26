return {
  name    = "openssh",
  version = "10.3p1",
  summary = "OpenSSH protocol implementation for remote login, command execution and file transfer",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/openssh/openssh-10.3p1.tar.gz",
  sha256  = "56682a36bb92dcf4b4f016fd8ec8e74059b79a8de25c15d670d731e7d18e45f4",
  deps    = { "openssl", "pam", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/sshd")
    p:run("test -f " .. p.install_root .. "/usr/bin/ssh")
  end,
}
