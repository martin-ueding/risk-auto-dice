# Copyright (c) 2011 Martin Ueding <dev@martin-ueding.de>

devel/l10n/riskautodice.pot: auto_dice.py
	xgettext -o devel/l10n/riskautodice.pot auto_dice.py

all: devel/l10n/riskautodice.pot l10n/de_DE/LC_MESSAGES/riskautodice.mo

l10n/de_DE/LC_MESSAGES/riskautodice.mo: devel/l10n/de.po
	msgfmt -o l10n/de_DE/LC_MESSAGES/riskautodice.mo devel/l10n/de.po
