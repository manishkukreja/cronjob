task :cron => :environment do
  puts "Add reminder to reminder schedule" 
    ReminderSchedule.set_reminder_schedule
  puts "done."
end