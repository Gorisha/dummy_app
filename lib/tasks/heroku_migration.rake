namespace :heroku_migration do
	task migrate_if_new: :environment do
		pending_migrations = ActiveRecord::Migrator.open(ActiveRecord::Migrator.migrations_paths).pending_migrations
		if pending_migrations.any?
			Rake::Task["db:migrate"].invoke
		end
	end
end