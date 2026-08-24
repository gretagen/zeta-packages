return {
  name    = "mesa-drivers",
  version = "26.1.8",
  summary = "Intel + AMD OpenGL, Vulkan, and VA-API drivers (Mesa 26.1.8)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/mesa-drivers/mesa-drivers-26.1.8.tar.xz",
  sha256  = "811e50a9fc7fd1b0454e9eaa4a0cd33d1277441336d01294e18706a735d0007b",
  deps    = { "libglvnd", "libX11", "libxcb", "wayland", "libpciaccess" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/dri/i915_dri.so")
    p:run("test -f " .. p.install_root .. "/usr/lib/dri/radeonsi_dri.so")
    p:run("test -f " .. p.install_root .. "/usr/lib/libvulkan_intel.so")
    p:run("test -f " .. p.install_root .. "/usr/lib/libvulkan_radeon.so")
    p:run("test -f " .. p.install_root .. "/usr/share/vulkan/icd.d/intel_icd.json")
    p:run("test -f " .. p.install_root .. "/usr/share/vulkan/icd.d/radeon_icd.json")
    p:run("test -f " .. p.install_root .. "/usr/lib/libgallium-26.1.8-arch1.1.so")
    p:run("test -f " .. p.install_root .. "/usr/lib/libEGL_mesa.so.0.0.0")
    p:run("test -f " .. p.install_root .. "/usr/lib/libGLX_mesa.so.0.0.0")
    p:run("test -f " .. p.install_root .. "/usr/lib/libgbm.so.1.0.0")
  end,
}
