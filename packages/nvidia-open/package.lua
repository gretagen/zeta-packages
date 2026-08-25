return {
  name    = "nvidia-open",
  version = "610.57.04",
  summary = "NVIDIA open GPU kernel modules (compiled against the running kernel at install time)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/nvidia-open/nvidia-open-610.57.04.tar.gz",
  sha256  = "024fe219dc0090953390bc9ac5fc09f4703d04c81f0a137e78af24c80a6d03a0",
  deps    = { "make", "gcc-libs" },
  build   = function(p)
    -- The payload unpacks to a source tree rooted at /usr/src/nvidia-open-610.57.04;
    -- build against /lib/modules/$(uname -r)/build (SYSSRC default) and install
    -- into $(INSTALL_MOD_PATH)/lib/modules/.../kernel/drivers/video.
    p:cd("usr/src/nvidia-open-610.57.04")
    p:run("make -j$(nproc) modules")
    p:run("make modules_install INSTALL_MOD_PATH=" .. p.install_root)
  end,
  test    = function(p)
    p:run("find " .. p.install_root .. "/lib/modules/$(uname -r) -name 'nvidia*.ko*' | grep -q .")
  end,
}
