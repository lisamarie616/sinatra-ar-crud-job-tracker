class ApplicantController < ApplicationController

  get '/signup' do
    erb :'applicant/signup'
  end

  post 'signup' do
    applicant = Applicant.new(params)
    if applicant.save
      session[:id] = applicant.id
      redirect '/applications'
    else
      redirect '/signup'
    end
  end

  get '/applications' do
    erb :'applicant/index'
  end
end