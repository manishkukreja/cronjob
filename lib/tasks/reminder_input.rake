
namespace :cron_initial_data do
	
	task :reminder_type_data => :environment  do
	  ReminderType.delete_all
	  ReminderType.create( :reminder_name => 'Daily')
	  ReminderType.create( :reminder_name => 'Weakly')
	  ReminderType.create( :reminder_name => 'Monthly')
	  ReminderType.create( :reminder_name => 'Yearly')
	  ReminderType.create( :reminder_name => 'X times a Day')
	  ReminderType.create( :reminder_name => 'X times a Week')
	  ReminderType.create( :reminder_name => 'X times a Month')
	  ReminderType.create( :reminder_name => 'X times a Year')
	  ReminderType.create( :reminder_name => 'As Needed')
	end

	task :reminder_info_data => :environment  do
	  ReminderInfo.delete_all
	  ReminderInfo.create( :reminder_type_id => 1, :iteration => 3, :start_date=> Date.today)
	  ReminderInfo.create( :reminder_type_id => 2, :iteration => 2, :start_date=> Date.today)
	  ReminderInfo.create( :reminder_type_id => 3, :iteration => 1, :start_date=> Date.today)
	  ReminderInfo.create( :reminder_type_id => 4, :iteration => 6, :start_date=> Date.today)
	  ReminderInfo.create( :reminder_type_id => 2, :iteration => 8, :start_date=> Date.today)
	  ReminderInfo.create( :reminder_type_id => 2, :iteration => 24, :start_date=> Date.today)
	end

end	