class CreateSepticTankLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :septic_tank_levels do |t|
      t.float :level
      t.datetime :measured_time

      t.timestamps
    end
  end
end
