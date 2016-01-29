require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride

use ApplicantController
use ContactController
use InterviewController
use JobApplicationController
use NoteController
run ApplicationController