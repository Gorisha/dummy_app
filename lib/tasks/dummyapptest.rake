namespace :dummyapptest do
  desc "TODO"
  task test1: :environment do
  	puts "run the file"
  	#rake db:migrate
  	# exec("rake db:migrate")
  end
end
