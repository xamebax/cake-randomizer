require 'erubis'
require 'sinatra'
# require 'lib/cake-randomizer'

# module CakeRandomizer
  # class App < Sinatra::Base

    # [background author_name url]
    AUTHORS = [%w(1.jpg almuallem http://www.freeimages.com/profile/almuallem),
           %w(2.jpg sanchezcl http://www.freeimages.com/profile/sanchezcl),
           %w(3.jpg Greenbay http://www.freeimages.com/profile/Greenbay),
           %w(4.jpg ground000 http://www.freeimages.com/profile/ground000)
          ]
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
SUGAR = ["white sugar", "caster sugar", "brown sugar", "agave syrup", "black treacle", "golden sirup", "vanilla sugar"]
FAT = ["coconut oil", "olive oil", "rape oil", "sunflower oil", "margarine"]
LIQUID = ["water", "soy milk", "oat milk", "macadamia milk", "cashew milk", "rice milk"]
SPICES = ["fresh ginger", "powdered ginger", "cinnamon", "vanilla", "cardamon", "chopped parsley", "curry powder", "coriander"]
OPTIONAL = [ { fruits: ["apple", "cherries", "shredded carrots", "pears", "bananas"] },
             { nuts: ["peanuts", "macadamia", "raisins", "pecans"] },
             { sprinkles: ["shredded coconut", "oats"] },
             { other: ["unicorn dung", "rainbows", "a touch of love", "liberal guilt"] }
           ]

    # Settings

    set :erb, escape_html: true

    # Views

    get '/' do
      erb :layout, locals: {
        image: AUTHORS.sample,
        name: @name,
        recipe: @recipe
      }
    end

    post '/' do
      @name = params[:name]
      @flour = FLOUR.sample
      @sugar = SUGAR.sample
      @fat = FAT.sample
      @liquid = LIQUID.sample
      @spices = SPICES.sample
      @optional = OPTIONAL.sample.values[0].sample
      @recipe = "Tasty recipe title"
      erb :layout, locals: {
        image: AUTHORS.sample,
        name: @name,
        recipe: @recipe,
        flour: @flour,
        sugar: @sugar,
        fat: @fat,
        liquid: @liquid,
        spices: @spices,
        optional: @optional
      }
    end
  # end
# end
