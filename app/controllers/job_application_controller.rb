class JobApplicationController < ApplicationController

  get '/applications/new' do
    if logged_in?
      erb :'job_application/new'
    else
      redirect '/login'
    end
  end

  post '/applications' do
    # application = Application.new(params[:application])
    # application.user_id = session[:id]
    # application.follow_up_date = Chronic.parse(params[:application][:follow_up_date])
    # application.submission_date = Chronic.parse(params[:application][:submission_date])
    # job = application.build_job(params[:job])
    # company = job.build_company(params[:company])

    # if company.save

    # else
    #   flash[:error] = company.errors.full_messages
    #   redirect '/applications/new'
    # end
  end

  get '/applications' do
    if logged_in?
      @applications = current_applicant.applications
      erb :'job_application/index'
    else
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
end