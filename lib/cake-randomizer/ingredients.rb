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

FLOUR = ['white flour', 'wholegrain flour', 'gluten-free flour',
         'spelt flour', '', '',]

SUGAR = ['white sugar', 'caster sugar', 'brown sugar', 'agave syrup',
         'black treacle', 'golden sirup', 'vanilla sugar']

FAT = ['coconut oil', 'coconut milk', 'olive oil', 'rape oil',
       'sunflower oil', 'margarine']

LIQUID = ['water', 'soy milk', 'oat milk', 'macadamia milk', 'cashew milk',
          'rice milk', 'soy-rice milk', 'almond milk', 'spelt milk',
          'apple juice, non-filtered'
         ]

SPICES = ['fresh ginger', 'powdered ginger', 'cinnamon', 'vanilla', 'cardamon',
          'chopped parsley', 'curry powder', 'coriander', 'chilli',
          'double espresso']

OPTIONAL = [{ fruits: ['chopped apples', 'grated apples', 'cherries',
                       'shredded carrots', 'pears', 'bananas',
                       'blueberries', 'strawberries', 'raspberries'] },
            { nuts: ['chopped peanuts', 'chopped macadamia', 'raisins',
                     'pecans', 'chopped cashews', "chopped almonds",
                     'almond flakes'] },
            { sprinkles: ['shredded coconut', 'oats', 'chopped chocolate',
                          'lemon zest'] },
            { other: ['unicorn dung', 'rainbows', 'a touch of love', 'liberal guilt'] }
           ]
