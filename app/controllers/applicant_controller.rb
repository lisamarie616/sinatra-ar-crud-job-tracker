class ApplicantController < ApplicationController

  get '/signup' do
    if logged_in?
      redirect '/applications'
    else
      erb :'applicant/signup'
    end
  end

  post '/applicants' do
    applicant = Applicant.new(params)
    if applicant.save
      session[:id] = applicant.id
      redirect '/'
    else
      flash[:error] = applicant.errors.full_messages
      redirect '/signup'
    end
  end

  get '/login' do
    if logged_in?
      redirect '/applications'
    else
      erb :'applicant/login'
    end
  end

  post '/login' do
    applicant = Applicant.find_by(username: params[:username])
    if applicant && applicant.authenticate(params[:password])
      session[:id] = applicant.id
      redirect '/'
    else
      flash[:error] = ["Login unsuccessful. Please check your username and password and try again"]
      redirect '/login'
    end
  end

  get '/logout' do
    if logged_in?
      logout!
      redirect '/'
    else
      redirect '/'
    end
  end
end