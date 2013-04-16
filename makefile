# Copyright © 2011-2013 Martin Ueding <dev@martin-ueding.de>

all: l10n/riskautodice.pot l10n/de_DE/LC_MESSAGES/riskautodice.mo risk-auto-dice.1.gz

# TODO Install the l10n files as well.
install:
	install -d "$(DESTDIR)/usr"
	install risk-auto-dice -t "$(DESTDIR)/usr"
	install -d "$(DESTDIR)/usr/share/man/man1"
	install risk-auto-dice.1.gz -t "$(DESTDIR)/usr/share/man/man1"

l10n/riskautodice.pot: risk-auto-dice
	xgettext -o $@ $^ --language Python

l10n/de_DE/LC_MESSAGES/riskautodice.mo: l10n/de.po
	msgfmt -o $@ $^

clean:
	$(RM) *.1 *.1.gz

%.1: %.1.rst
	rst2man $< $@

%.1.gz: %.1
	gzip $<
