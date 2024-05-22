class CreateSchedules < ActiveRecord::Migration[7.1]
  def change
    create_table :schedules do |t|
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
