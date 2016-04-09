require 'erubis'
require 'sinatra'
require 'cake-randomizer'

module CakeRandomizer
  class App < Sinatra::Base

    # [background author_name url]
    AUTHORS = [%w(1.jpg almuallem http://www.freeimages.com/profile/almuallem),
               %w(2.jpg sanchezcl http://www.freeimages.com/profile/sanchezcl),
               %w(3.jpg Greenbay http://www.freeimages.com/profile/Greenbay),
               %w(4.jpg ground000 http://www.freeimages.com/profile/ground000),
               %w(5.jpg marsy http://www.freeimages.com/photographer/marsy-43108),
               %w(6.jpg u8mealive http://www.freeimages.com/photographer/u8mealive-41630)
              ]
    # Settings

    set :erb, escape_html: true
    set :root, ::File.expand_path(::File.join(::File.dirname(__FILE__), '../..'))

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
      @spices = SPICES.sample + ', ' + SPICES.sample
      @optional = OPTIONAL.sample.values[0].sample
      @recipe = 'Tasty recipe title'
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
  end
end
