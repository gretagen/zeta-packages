return {
  name = "wayland",
  version = "1.26.0",
  summary = "Wayland compositor infrastructure: client/server libraries and scanner",
  url = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/wayland/wayland-1.26.0.tar.gz",
  sha256 = "4f2cf466ebd8dec327928ec405bd9d5a0cec05758e97214d4f29f3fed229550c",
  deps = { "libffi", "libxml2" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/wayland-scanner --version")
  end,
}
