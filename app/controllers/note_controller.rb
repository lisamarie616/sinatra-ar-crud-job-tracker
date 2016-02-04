class NoteController < ApplicationController
  get '/notes/new' do
    @application = Application.find(params[:application_id])
    if logged_in? && current_applicant.applications.find_by(id: params[:application_id])
      erb :'note/new'
    else
      redirect '/login'
    end
  end

  post '/notes' do
    @application = Application.find(params[:application_id])
    note = Note.new(application_id: params[:application_id])
    note.date = Chronic.parse(params[:date])
    note.notes = params[:notes]
    if note.save
      redirect "/applications/#{@application.id}"
    else
      flash.now[:error] = note.errors.full_messages
      erb :'note/new'
    end
  end

  get '/notes/:id/edit' do
    @note = Note.find(params[:id])
    if logged_in? && current_applicant.applications.find_by(id: @note.application_id)
      erb :'note/edit'
    else
      redirect '/login'
    end
  end

  put '/notes/:id' do
    note = Note.find(params[:id])
    if logged_in? && current_applicant.applications.find_by(id: note.application_id)
      note.date = Chronic.parse(params[:date])
      note.notes = params[:notes]
      if note.save
        redirect "/applications/#{note.application_id}"
      else
        flash[:error] = note.errors.full_messages
        redirect "/notes/#{note.id}/edit"
      end
    else
      redirect '/login'
    end
  end

  delete '/notes/:id' do
    note = Note.find(params[:id])
    if logged_in? && current_applicant.applications.find_by(id: note.application_id)
      note.destroy
      redirect "/applications/#{note.application_id}"
    else
      redirect '/login'
    end
  end
end