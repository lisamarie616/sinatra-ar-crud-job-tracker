class JobApplicationController < ApplicationController

  # get '/applications/new' do
  #   if logged_in?
  #     erb :'job_application/new'
  #   else
  #     redirect '/login'
  #   end
  # end

  post '/applications' do
    @company = Company.find_by(params[:company])
    application = Application.new(params[:application])
    application.applicant_id = session[:id]
    application.company_id = @company.id
    application.follow_up_date = Chronic.parse(params[:application][:follow_up_date])
    application.submission_date = Chronic.parse(params[:application][:submission_date])
    if application.save
      redirect '/applications'
    else
      flash.now[:error] = application.errors.full_messages
      erb :'job_application/new'
    end
  end

  get '/applications' do
    if logged_in?
      @applications = current_applicant.applications
      erb :'job_application/index'
    else
      flash[:error] = ["Please signup or login to continue"]
      redirect '/login'
    end
  end

  get '/applications/:id' do
    if logged_in? && current_applicant.applications.find_by(id: params[:id])
      @application = Application.find(params[:id])
      erb :'job_application/show'
    else
      redirect '/login'
    end
  end

  get '/applications/:id/edit' do
    if logged_in? && current_applicant.applications.find_by(id: params[:id])
      @application = Application.find(params[:id])
      erb :'job_application/edit'
    else
      redirect '/login'
    end
  end

  put '/applications/:id' do
    if logged_in? && current_applicant.applications.find_by(id: params[:id])
      application = Application.find(params[:id])
      application.title = params[:title]
      application.location = params[:location]
      application.salary = params[:salary]
      application.link = params[:link]
      application.submission_date = Chronic.parse(params[:submission_date])
      application.cover_letter = params[:cover_letter]
      application.resume = params[:resume]
      application.follow_up_date = Chronic.parse(params[:follow_up_date])
      if application.save
        redirect "/applications/#{application.id}"
      else
        flash[:error] = application.errors.full_messages
        redirect "/applications/#{application.id}/edit"
      end
    else
      redirect '/login'
    end
  end
end






