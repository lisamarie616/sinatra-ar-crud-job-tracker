class JobApplicationController < ApplicationController
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
    end
  end
end