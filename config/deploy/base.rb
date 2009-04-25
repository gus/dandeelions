host 'dandeelions@thumblemonks.com', :app
set :application, "dandeelions"
set :deploy_to,   "/var/app/#{application}"
set :repository,  "git@github.com:jaknowlden/dandeelions.git"
set :revision,    ENV['REV'] || 'origin/master'

task 'vlad:deploy' => ['vlad:update']
