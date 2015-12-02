module App

  class Server < Sinatra::Base
    # to use for delete methods!
    set :method_override, true

    get "/" do
      "HELLO WORLD"     
    end


  end

end
