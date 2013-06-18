
set :branch,     "production"
set :rails_env, 'production'

#declare production servers
default_environment["RAILS_ENV"] = 'production'
role :web, "darkportal.no-ip.info"                          # Your HTTP server, Apache/etc
role :app, "darkportal.no-ip.info"                          # This may be the same as your `Web` server
role :db,  "darkportal.no-ip.info", :primary => true        # This is where Rails migrations will run
set :deploy_to, "/var/www/redmine"
set :user, "nhut_le"                                        #user on production server to deploy
set :use_sudo, false

set :config_loc, "/home/CONFIG/ubuntu/var/www/redmine"
