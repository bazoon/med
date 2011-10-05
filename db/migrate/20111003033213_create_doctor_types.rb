class CreateDoctorTypes < ActiveRecord::Migration
  def change
    drop_table :doctor_types
    
    create_table :doctor_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
