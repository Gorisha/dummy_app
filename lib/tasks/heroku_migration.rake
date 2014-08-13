namespace :heroku_migration do
	desc "TODO"
	task migrate_if_new: :environment do
		exec("heroku maintenance:on")
		exec("git push heroku master")
		exec("rake db:migrate:status")
		# if(pending)
		# 	exec("heroku stop scheduler")
		# 	exec("rake db:migrate")
		# 	exec("heroku restart")
		# end
		exec("heroku maintenance:off") 
	end
end
