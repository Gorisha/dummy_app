namespace :heroku_migration do
	desc "TODO"
	task heroku_on: :environment do
		exec("heroku maintenance:on")
	end
	task migrate_if_new: :environment do
		pending_migrations = ActiveRecord::Migrator.open(ActiveRecord::Migrator.migrations_paths).pending_migrations
		if pending_migrations.any?
			Rake::Task["db:migrate"].invoke
		end
	end
	task heroku_off: :environment do
		exec("heroku maintenance:off")
end
