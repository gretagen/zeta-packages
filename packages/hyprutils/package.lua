return {
  name = "hyprutils",
  version = "0.14.0",
  summary = "Utility library for the Hypr ecosystem",
  url = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/hyprutils/hyprutils-0.14.0.tar.gz",
  sha256 = "4ad63774819e0c3a7e86e5493e3cc4d67ec01f8467880b4eb5ea321ebe25ce5b",
  deps = { "pixman" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libhyprutils.so.13")
  end,
}
