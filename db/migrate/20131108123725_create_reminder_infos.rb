class CreateReminderInfos < ActiveRecord::Migration
  def change
    create_table :reminder_infos do |t|
      t.integer :iteration
      t.integer :consumer_id
      t.integer :consumer_med_id
      t.integer :reminder_type_id
      t.datetime :start_date
      t.timestamps
    end
  end
end
