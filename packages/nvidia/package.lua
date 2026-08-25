return {
  name    = "nvidia",
  version = "610.57.04",
  summary = "NVIDIA official driver (meta-package: open kernel modules + userspace)",
  deps    = { "nvidia-open", "nvidia-utils" },
  install = function(p)
    local dir = p.install_root .. "/usr/share/nvidia"
    p:run("mkdir -p " .. dir)
    p:run("echo 'NVIDIA official driver 610.57.04' > " .. dir .. "/meta")
  end,
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/nvidia/meta")
  end,
}
