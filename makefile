# Copyright (c) 2011 Martin Ueding <dev@martin-ueding.de>

riskautodice: risk_auto_dice.py
	cp risk_auto_dice.py riskautodice

all: devel/l10n/riskautodice.pot l10n/de_DE/LC_MESSAGES/riskautodice.mo

devel/l10n/riskautodice.pot: risk_auto_dice.py
	xgettext -o devel/l10n/riskautodice.pot risk_auto_dice.py

l10n/de_DE/LC_MESSAGES/riskautodice.mo: devel/l10n/de.po
	msgfmt -o l10n/de_DE/LC_MESSAGES/riskautodice.mo devel/l10n/de.po
