############
riskautodice
############

**********************************************
roll the dice in the classic board game “Risk”
**********************************************

:Author: Martin Ueding <dev@martin-ueding.de>
:Manual section: 1

SYNOPSIS
========

::

    riskautodice attacking defending

DESCRIPTION
===========

In "Risk", one sometimes has big fights like 139 vs. 98 units. One can
surely use the supplied red and blue dice, but that can become a little
tedious after a while. Use this program to focus on your tactics instead
on rolling the dice.

OPTIONS
=======

EXIT STATUS
===========

ENVIRONMENT
===========

FILES
=====

CONFORMING TO
=============

NOTES
=====

BUGS
====

EXAMPLE
=======

Just get the result of the previously mentioned fight:

::

    riskautodice 139 98

Display every intermediate result as well:

::

    riskautodice -v 139 98

SEE ALSO
========

