class CreateHospitalizationTypes < ActiveRecord::Migration
  def change
    create_table :hospitalization_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
