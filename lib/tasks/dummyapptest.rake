namespace :dummyapptest do
  desc "TODO"
  task test1: :environment do
  	puts "run the file"
  	#rake db:migrate
  	exec("bundle exec rake db:migrate")
  	execute(terminal)
  end

end
