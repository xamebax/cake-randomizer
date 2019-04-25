require 'erubis'
require 'sinatra'
require 'cake_randomizer'

module CakeRandomizer
  # App stores the whole application
  class App < Sinatra::Base
    # Settings

    set :erb, escape_html: true
    set :root, ::File.expand_path(::File.join(::File.dirname(__FILE__),
                                              '../..'))

    # Views

    get '/' do
      erb :layout, locals: {
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
      @spices = SPICES.sample(2)
      @optional = OPTIONAL.sample.values[0].sample
      erb :layout, locals: {
        name: @name,
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