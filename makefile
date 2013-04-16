# Copyright © 2011-2013 Martin Ueding <dev@martin-ueding.de>

all: l10n/riskautodice.pot l10n/de_DE/LC_MESSAGES/riskautodice.mo riskautodice.1

install:
	install -d "$(DESTDIR)/usr"
	install riskautodice -t "$(DESTDIR)/usr"

l10n/riskautodice.pot: riskautodice
	xgettext -o $@ $^ --language Python

l10n/de_DE/LC_MESSAGES/riskautodice.mo: l10n/de.po
	msgfmt -o $@ $^

riskautodice.1: riskautodice.1.rst
	rst2man $< $@
