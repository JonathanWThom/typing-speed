require('sinatra/activerecord')
require('sinatra/activerecord/rake')

namespace :db do
  #need the old stuff here??
  namespace :test do
    task :prepare => :environment do
      Rake::Task["db:seed"].invoke
    end
  end
end
