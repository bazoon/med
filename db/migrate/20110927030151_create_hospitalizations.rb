class CreateHospitalizations < ActiveRecord::Migration
  def change
    create_table :hospitalizations do |t|
      t.integer :hospitalization_type
      t.date :actual_date
      t.integer :client_id

      t.timestamps
    end
  end
end
