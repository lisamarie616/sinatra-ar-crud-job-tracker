class ApplicationController < Sinatra::Base
  register Sinatra::Flash

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
      @current_applicant ||= Applicant.find(session[:id]) if session[:id]
    end

    def logout!
      session.clear
    end
  end
end