# main app
require 'sinatra'
require 'erb'
require 'time'
require 'digest'
require 'sinatra/simple-navigation'
require 'rack-flash'

class Sinatrabootstrap::App < Sinatra::Base

  autoload :Helpers, 'sinatrabootstrap/helpers'

  @@root = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
  set :root,  @@root    
  set :app_file, __FILE__
  set :public_folder, File.dirname(__FILE__) + '/public'
  set :views, File.dirname(__FILE__) + '/views'
  set :method_override, true
  enable :sessions

  # Helpers
  helpers Helpers
  register Sinatra::SimpleNavigation
  use Rack::Flash

  configure do
    enable :sessions
  end
  
  get '/' do
    erb :'index'
  end
  
  get '/about' do
    erb :'about'
  end

end
