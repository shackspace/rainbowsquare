namespace :bootstrap do
  desc "Add the default admin user"
  task :default_admin => :environment do
    @player = Player.new(:email => 'admin@test.com', :password => 'admin123', :password_confirmation => 'admin123')
    @player.admin = true
    @player.save
  end

  desc "Run all bootstrapping tasks"
  task :all => [:default_admin]
end
