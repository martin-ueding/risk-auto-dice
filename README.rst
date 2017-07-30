.. Copyright © 2013, 2017 Martin Ueding <dev@martin-ueding.de>

##############
risk-auto-dice
##############

Does the dice rolling in the classic game “Risk”.

When playing the classic board game Risk, you have to roll the dice to
determine the outcome of a battle. You can roll up to three dice at one time.
This is fun until you have some 150 against some 130 units. While they were
rolling the dice around 100 times, I wrote a small Python program that would do
the dice rolling in those cases.

You can run it without showing every single dice roll::

    $ ./riskautodice 10 10
    attacker wins with 2 units left

Or if you are curious, you can see what happens in every round::

    $ ./riskautodice -v 5 5
    the attacker: [3, 4, 5], the defender: [2, 3]
    5 vs 3, winner: attacker
    4 vs 2, winner: attacker

    the attacker: [1, 1, 4], the defender: [6, 6]
    4 vs 6, winner: defender
    1 vs 6, winner: defender

    the attacker: [3, 4, 5], the defender: [1, 5]
    5 vs 5, winner: defender
    4 vs 1, winner: attacker

    the attacker: [2, 4], the defender: [2, 3]
    4 vs 3, winner: attacker
    2 vs 2, winner: defender

    the attacker: [5], the defender: [2]
    5 vs 2, winner: attacker

    defender wins with 1 units left

Installation
============

::

    make
    sudo make install

Dependencies
============

- Python 2 (``python``)
- ``gettext``
