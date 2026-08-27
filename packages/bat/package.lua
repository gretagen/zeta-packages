return {
	name = "bat",
	version = "0.26.1",
	summary = "A cat clone with wings.",
	url = "https://raw.githubusercontent.com/zozkide/zeta-packages/refs/heads/main/packages/bat/bat-0.26.1.tar.gz",
	sha256 = "5b8e0e5dcfaefa1b79e3801bd54bdfb4c54053989417ad87ab90bd51226cc830",
	deps = { "glibc" },
	archive = { strip = 1 },
	test = function(p)
		p:run("test -f" .. p.install_root .. "/usr/bin/bat")
	end,
}
