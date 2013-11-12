class CreateReminderTypes < ActiveRecord::Migration
  def change
    create_table :reminder_types do |t|
      t.string :reminder_name

      t.timestamps
    end
  end
end
