class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "flatiron_learn"
  end

  get '/' do
    erb :index
  end

  helpers do
    def logged_in?
      !!session[:id]
    end

    def current_applicant
      Applicant.find(session[:id])
    end
  end
end