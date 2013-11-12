class ReminderType < ActiveRecord::Base
  has_many :reminder_infos
end
