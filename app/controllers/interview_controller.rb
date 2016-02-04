class InterviewController < ApplicationController

  get '/interviews/new' do
    if logged_in?
      @application = Application.find(params[:application_id])
      erb :'interview/new'
    else
      flash[:error] = ["Please signup or login to continue"]
      redirect '/login'
    end
  end

  post '/interviews' do
    @application = Application.find(params[:application_id])
    interview = Interview.new(application_id: params[:application_id])
    interview.date = Chronic.parse(params[:date])
    interview.thank_yous_sent = Chronic.parse(params[:thank_yous_sent])
    if interview.save
      redirect "/applications/#{@application.id}"
    else
      flash.now[:error] = interview.errors.full_messages
      erb :'interview/new'
    end
  end

  get '/interviews' do
    if logged_in?
      @interviews = current_applicant.interviews
      erb :'interview/index'
    else
      flash[:error] = ["Please signup or login to continue"]
      redirect '/login'
    end
  end

  get '/interviews/:id/edit' do
    @interview = Interview.find(params[:id])
    if logged_in? && current_applicant.applications.find_by(id: @interview.application_id)
      erb :'interview/edit'
    else
      redirect '/login'
    end
  end

  put '/interviews/:id' do
    interview = Interview.find(params[:id])
    if logged_in? && current_applicant.applications.find_by(id: interview.application_id)
      interview.date = Chronic.parse(params[:date])
      interview.thank_yous_sent = Chronic.parse(params[:thank_yous_sent])
      if interview.save
        redirect "/applications/#{interview.application_id}"
      else
        flash[:error] = interview.errors.full_messages
        redirect "/interviews/#{interview.id}/edit"
      end
    else
      redirect '/login'
    end
  end

  delete '/interviews/:id' do
    interview = Interview.find(params[:id])
    if logged_in? && current_applicant.applications.find_by(id: interview.application_id)
      interview.destroy
      redirect "/applications/#{interview.application_id}"
    else
      redirect '/login'
    end
  end
end



