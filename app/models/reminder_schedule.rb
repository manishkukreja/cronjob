class ReminderSchedule < ActiveRecord::Base
  belongs_to :reminder_infos

  def self.set_reminder_schedule
  	reminder_infos = ReminderInfo.all
  	reminder_infos.each do |reminder_info|
  	  reminder_type = reminder_info.reminder_type.reminder_name		
      iteration = reminder_info.iteration
      day_of_month = nil
	  day_of_week = nil
      (1..iteration).each do |i|
	    if reminder_type == "Monthly"
	      day_of_month = reminder_info.start_date.day
	      day_of_week = nil
	    elsif reminder_type == "Weekly"
	      day_of_month = nil
	      day_of_week = i
	    end
        reminder_info.reminder_schedules.create(day_of_week: day_of_week,day_of_month: day_of_month ,due_date: reminder_info.start_date)
      end
  	end	
  end
end
