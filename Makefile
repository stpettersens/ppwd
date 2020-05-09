make:
	luac -o ppwd.luac ppwd.lua
install:
	@echo "Run as root user to install."
	cp ppwd.luac /usr/local/bin
	cp ppwd /usr/local/bin
srcexec:
	@echo "Run as root user to install executable Lua source."
	cp ppwd.lua /usr/local/bin
	mv /usr/local/bin/ppwd.lua /usr/local/bin/ppwd
	chmod +x /usr/local/bin/ppwd
clean:
	rm ppwd.luac
uninstall:
	@echo "Run as root user to uninstall."
	rm /usr/local/bin/ppwd
	rm /usr/local/bin/ppwd.luac
