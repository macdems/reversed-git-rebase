PREFIX = /usr/local

all: bin, locale

bin: bin/reversed-git-rebase-editor
	@echo "Installing binary files..."
	@install -d $(DESTDIR)$(PREFIX)/bin 2>/dev/null || true
	@install -m 755 bin/reversed-git-rebase-editor $(DESTDIR)$(PREFIX)/bin/reversed-git-rebase-editor

locale: $(widlcard share/locale/*/LC_MESSAGES/reversed-git-rebase.mo)
	@echo "Installing locale files..."
	@for i in share/locale/*/LC_MESSAGES; do \
		install -d $(DESTDIR)$(PREFIX)/$$i 2>/dev/null || true; \
		install -m 644 $$i/reversed-git-rebase.mo $(DESTDIR)$(PREFIX)/$$i/reversed-git-rebase.mo; \
	done

.PHONY: all, bin, locale
