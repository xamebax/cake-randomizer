require 'erubis'
require 'sinatra'

# module CakeRandomizer
  # class App < Sinatra::Base

    # [background author_name url]
    AUTHORS = [%w(1.jpg almuallem http://www.freeimages.com/profile/almuallem),
           %w(2.jpg sanchezcl http://www.freeimages.com/profile/sanchezcl),
           %w(3.jpg Greenbay http://www.freeimages.com/profile/Greenbay),
           %w(4.jpg ground000 http://www.freeimages.com/profile/ground000)
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
      erb :layout, locals: {
        image: AUTHORS.sample,
        name: @name,
        recipe: @recipe
      }
    end
  # end
# end
