class CreateReminderSchedules < ActiveRecord::Migration
  def change
    create_table :reminder_schedules do |t|
      t.integer :day_of_week
      t.integer :day_of_month
      t.integer :reminder_info_id
      t.datetime :due_date
      t.timestamps
    end
  end
end
