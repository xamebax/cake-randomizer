require 'erubis'
require 'sinatra'

# [background author_name url]
AUTHORS = [ %w[1.jpg almuallem http://www.freeimages.com/profile/almuallem],
            %w[2.jpg sanchezcl http://www.freeimages.com/profile/sanchezcl],
            %w[3.jpg Greenbay http://www.freeimages.com/profile/Greenbay],
            %w[4.jpg ground000 http://www.freeimages.com/profile/ground000]
          ]

get '/' do
  erb :layout, locals: {
    image: AUTHORS.sample
  }
end

