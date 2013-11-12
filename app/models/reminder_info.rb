class ReminderInfo < ActiveRecord::Base
  belongs_to :reminder_type
  has_many :reminder_schedules

  def check_reminder_type
	case self.reminder_type.reminder_name
	when "Daily"
	  rnt_val = nil
	when "Weekly"
	  rnt_val = "Weekly"
	when "Monthly"
	  rnt_val = self.start_date.day
	else
	  puts "You gave me #{a} -- I have no idea what to do with that."
	end
  end
end
