#!/usr/bin/python
# Copyright (c) 2011 Martin Ueding <dev@martin-ueding.de>

import sys
import random
import optparse

parser = optparse.OptionParser(description="automates the dice rolling in the classic game 'risk'", usage="usage: %prog attacking defending")
parser.add_option("-v", "--verbose", dest="verbose", action="store_true", default=False, help="show each step of rolling the dice")
(options, args) = parser.parse_args()
del parser

if len(args) != 2:
	print "call with -h to get help"
	sys.exit(1)

attacking = int(args[0])
defending = int(args[1])

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

	if options.verbose:
		print "the attacker:", red_dice, "the defendant:", blue_dice

	for r, b in zip(reversed(red_dice), reversed(blue_dice)):
		if options.verbose:
			print r, b,
		if r > b:
			attacking -= 1
			if options.verbose:
				print " attacker wins"
		else:
			defending -= 1
			if options.verbose:
				print " defendant wins"

if attacking > 0:
	print "attacker wins with", attacking, "units left"
else:
	print "defendant wins with", defending, "units left"
	

