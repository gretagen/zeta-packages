return {
  name    = "vulkan-loader",
  version = "1.3.296",
  summary = "Vulkan ICD loader library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/vulkan-loader/vulkan-loader-1.3.296.tar.gz",
  sha256  = "682d5323cf31308402c888599b375ebf15810f95d6d1a08ad2f525766becf99b",
  deps    = { "vulkan-headers", "libxcb", "libX11" },
  build   = function(p)
    p:run("cmake -B build -DCMAKE_INSTALL_PREFIX=/usr -DBUILD_TESTS=OFF -DBUILD_WSI_XCB_SUPPORT=ON -DBUILD_WSI_XLIB_SUPPORT=ON -DBUILD_WSI_WAYLAND_SUPPORT=ON")
    p:run("cmake --build build -j" .. "$(nproc)")
    p:run("DESTDIR=" .. p.install_root .. " cmake --install build")
  end,
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libvulkan.so.1")
  end,
}
