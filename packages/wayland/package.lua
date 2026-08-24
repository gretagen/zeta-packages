return {
  name = "wayland",
  version = "1.26.0",
  summary = "Wayland compositor infrastructure: client/server libraries and scanner",
  url = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/wayland/wayland-1.26.0.tar.gz",
  sha256 = "bb141f26535d9076f76bf97c93cdedfaeadd0b849aa0a7471062dd3ff4e29766",
  deps = { "libffi", "libxml2" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/wayland-scanner --version")
  end,
}
