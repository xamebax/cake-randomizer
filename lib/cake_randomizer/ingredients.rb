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
         'spelt flour'].freeze

SUGAR = ['white sugar', 'caster sugar', 'brown sugar', 'agave syrup',
         'black treacle', 'golden syrup', 'vanilla sugar', 'stevia'].freeze

FAT = ['coconut oil', 'coconut milk', 'olive oil', 'rapeseed oil',
       'sunflower oil', 'margarine'].freeze

LIQUID = ['water', 'soy milk', 'oat milk', 'macadamia milk', 'cashew milk',
          'rice milk', 'soy-rice milk', 'almond milk', 'spelt milk',
          'hemp milk', 'barley milk',
          'apple juice, non-filtered', 'pear juice, non-filtered'].freeze

SPICES = ['fresh ginger', 'powdered ginger', 'cinnamon', 'vanilla extract', 'cardamon',
          'chopped parsley', 'curry powder', 'coriander powder', 'chilli',
          'double espresso', 'fresh coriander', 'cumin', 'anise seed', 'nutmeg', 'cloves',
          'basil', 'cayenne pepper', 'curry powder', 'dill', 'garam masala',
          'marjoram leaves', 'orange peel', 'black pepper', 'fresh mint', 'rosemary',
          'thyme leaf'].freeze

OPTIONAL = [{ fruits: ['chopped apples', 'grated apples', 'cherries',
                       'shredded carrots', 'chopped pears', 'chopped bananas',
                       'smashed bananas', 'plums', 'avocado', 'pomegranade seeds',
                       'blueberries', 'strawberries', 'raspberries', 'chopped mango',
                       'apricots', 'shredded beetroot', 'cooked pumpkin pulp',
                       'chopped nectarine', 'cooked sweet potato pulp', 'shredded zucchini'] },
            { nuts: ['chopped peanuts', 'chopped macadamia', 'raisins',
                     'pecans', 'chopped cashews', 'chopped almonds',
                     'almond flakes', 'almond powder', 'dates',
                     'chopped walnuts', 'walnut powder', 'dried fruit mix',
                     'poppy seeds'] },
            { sprinkles: ['shredded coconut', 'oats', 'chopped chocolate',
                          'lemon zest', 'cacao'] },
            { other: ['hair of a unicorn', 'rainbows', 'a touch of love',
                      'liberal guilt', 'sparkles'] }].freeze
