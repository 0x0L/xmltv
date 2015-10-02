install:
	@mkdir -p ~/bin
	@cp xmltv ~/bin/xmltv
	@chmod u+x xmltv

	@sed "s|HOME_DIR|$(HOME)|" org.0x0L.xmltv.plist \
			 > ~/Library/LaunchAgents/org.0x0L.xmltv.plist

	@echo "➜ Starting agent"
	@/bin/launchctl load ~/Library/LaunchAgents/org.0x0L.xmltv.plist


uninstall:
	@echo "➜ Stopping agent"
	@/bin/launchctl unload org.0x0L.xmltv.plist

	@echo "➜ Removing files"
	@rm ~/Library/LaunchAgents/org.0x0L.xmltv.plist
	@rm ~/bin/xmltv
