# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
reminder_name = %w(Daily Weekly Monthly)
reminder_name.each do |name|
  ReminderType.find_or_create_by_reminder_name(reminder_name: name)
end
reminder_info = [
				   {reminder_type_id: 1, consumer_med_id: 3, iteration: 2, start_date: "08/11/2013", consumer_id: 101 },
				   {reminder_type_id: 3, consumer_med_id: 1, iteration: 1, start_date: "25/11/2013", consumer_id: 101 },
				   {reminder_type_id: 2, consumer_med_id: 7, iteration: 3, start_date: "11/11/2013", consumer_id: 111 },
				   {reminder_type_id: 1, consumer_med_id: 8, iteration: 2, start_date: "08/11/2013", consumer_id: 111 },
				   {reminder_type_id: 1, consumer_med_id: 17, iteration: 5, start_date: "08/11/2013", consumer_id: 110 }
                ]
reminder_info.each do |info|
  ReminderInfo.create(info)
end
