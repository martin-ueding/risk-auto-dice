#!/usr/bin/python
# Copyright (c) 2011 Martin Ueding <dev@martin-ueding.de>

import sys
import random

if len(sys.argv) < 3:
	print "usage: auto_dice.py attacking defending [-v]"
	sys.exit(1)

# TODO use optparse here
verbose = len(sys.argv) == 4 and sys.argv[3] == "-v"

attacking = int(sys.argv[1])
defending = int(sys.argv[2])

# fight until the last man standing
while attacking > 0 and defending > 0:
	red_dice = [0]*min(attacking, 3)
	blue_dice = [0]*min(defending, 2, attacking)

	# roll the dice
	for i in range(len(red_dice)):
		red_dice[i] = random.randint(1, 6)
	for i in range(len(blue_dice)):
		blue_dice[i] = random.randint(1, 6)


	red_dice.sort()
	blue_dice.sort()

	if verbose:
		print "the attacker:", red_dice, "the defendant:", blue_dice

	for r, b in zip(reversed(red_dice), reversed(blue_dice)):
		if verbose:
			print r, b,
		if r > b:
			attacking -= 1
			if verbose:
				print " attacker wins"
		else:
			defending -= 1
			if verbose:
				print " defendant wins"

if attacking > 0:
	print "attacker wins with", attacking, "units"
else:
	print "defendant wins with", defending, "units"
	

