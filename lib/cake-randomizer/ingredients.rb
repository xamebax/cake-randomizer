# A cake recipe consist of a set of elements:
# a type of flour,
# sugar or another sweetener,
# some sort of fat,
# liquid (water or milk),
# a set of spices,
# a raising agent - baking powder for simplicity.
# There are also optional ingredients:
# fruits|vegetables|nuts|etc.


FLOUR = ['white flour', 'wholegrain flour', 'gluten-free flour',
         'spelt flour']

SUGAR = ['white sugar', 'caster sugar', 'brown sugar', 'agave syrup',
         'black treacle', 'golden syrup', 'vanilla sugar', 'stevia']

FAT = ['coconut oil', 'coconut milk', 'olive oil', 'rapeseed oil',
       'sunflower oil', 'margarine']

LIQUID = ['water', 'soy milk', 'oat milk', 'macadamia milk', 'cashew milk',
          'rice milk', 'soy-rice milk', 'almond milk', 'spelt milk',
          'apple juice, non-filtered', 'pear juice, non-filtered'
         ]

SPICES = ['fresh ginger', 'powdered ginger', 'cinnamon', 'vanilla', 'cardamon',
          'chopped parsley', 'curry powder', 'coriander powder', 'chilli',
          'double espresso', 'chopped coriander']

OPTIONAL = [{ fruits: ['chopped apples', 'grated apples', 'cherries',
                       'shredded carrots', 'chopped pears', 'chopped bananas',
                       'smashed bananas', 'plums', 'avocado',
                       'blueberries', 'strawberries', 'raspberries'] },
            { nuts: ['chopped peanuts', 'chopped macadamia', 'raisins',
                     'pecans', 'chopped cashews', "chopped almonds",
                     'almond flakes', 'almond powder', 'dates',
                     'chopped walnuts', 'walnut powder', 'dried fruit mix'] },
            { sprinkles: ['shredded coconut', 'oats', 'chopped chocolate',
                          'lemon zest', 'cacao'] },
            { other: ['hair of a unicorn', 'rainbows', 'a touch of love',
                      'liberal guilt', 'sparkles'] }
           ]
