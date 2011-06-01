# Copyright (c) 2011 Martin Ueding <dev@martin-ueding.de>

all: devel/l10n/riskautodice.pot l10n/de_DE/LC_MESSAGES/riskautodice.mo

devel/l10n/riskautodice.pot: riskautodice
	xgettext -o devel/l10n/riskautodice.pot riskautodice

l10n/de_DE/LC_MESSAGES/riskautodice.mo: devel/l10n/de.po
	msgfmt -o l10n/de_DE/LC_MESSAGES/riskautodice.mo devel/l10n/de.po
