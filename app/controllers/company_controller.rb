class CompanyController < ApplicationController

  get '/companies/new' do
    if logged_in?
      erb :'company/new'
    else
      flash[:error] = ["Please signup or login to continue"]
      redirect '/login'
    end
  end

  post '/companies' do
    @company = Company.find_or_create_by(name: params[:name], headquarters: params[:headquarters]) do |company|
      company.website = params[:website]
    end
    if @company.valid?
      erb :'job_application/new'
    else
      flash[:error] = @company.errors.full_messages
      redirect '/companies/new'
    end
  end
end