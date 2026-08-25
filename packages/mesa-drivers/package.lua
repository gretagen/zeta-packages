return {
  name    = "mesa-drivers",
  version = "26.1.8",
  summary = "Mesa 3D drivers (radeonsi, i915, lavapipe, etc.)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mesa-drivers/mesa-drivers-26.1.8.tar.gz",
  sha256  = "9aa0f46caa64a6aa648096481d4e3a7a4909b920d926dcbceb03993f97082932",
  deps    = { "llvm-libs", "libglvnd", "libX11", "libxcb", "wayland", "libpciaccess", "libXxf86vm", "libigdgmm" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/dri/radeonsi_dri.so")
  end,
}
