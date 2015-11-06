# A cake recipe consist of a set of elements:
# a type of flour,
# sugar or another sweetener,
# some sort of fat,
# liquid (water or milk),
# a set of spices.
#
# There are also optional ingredients:
# fruits|vegetables|nuts,
#
# We want to create a list of options for each element
# that the randomizer can use.
#
# What about baking time?
#
# Quantity!
#
# What about preparation time? Will a flat array do, or
# should we have an array of subtype hashes where necessary?
#
# So many questions!
#
# Allergies!
#

FLOUR = ["white flour", "wholegrain flour", "gluten-free flour"]
SUGAR = ["white sugar", "caster sugar", "brown sugar", "agave syrup", "black treacle"]
FAT = []
LIQUID = []
SPICES = []
OPTIONAL = [ { fruits: [], nuts: [], sprinkles: [], other: [] } ]
