devel/l10n/main.pot: auto_dice.py
	xgettext -o devel/l10n/main.pot auto_dice.py

all: devel/l10n/main.pot l10n/de_DE/LC_MESSAGES/main.mo

l10n/de_DE/LC_MESSAGES/main.mo: devel/l10n/de.po
	msgfmt -o l10n/de_DE/LC_MESSAGES/main.mo devel/l10n/de.po
