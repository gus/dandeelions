host 'dandeelions@thumblemonks.com', :app
set :application, "dandeelions"
set :deploy_to,   "/var/app/#{application}"
set :repository,  "git@github.com:jaknowlden/dandeelions.git"
set :revision,    ENV['REV'] || 'origin/master'

Rake::Task['vlad:update_symlinks'].remote_actions.clear
