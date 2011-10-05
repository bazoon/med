class HospSubstHospTypeId < ActiveRecord::Migration
  def up
    remove_column :hospitalizations,:hospitalization_type
    add_column :hospitalizations,:hospitalization_type_id,:integer
  end

  def down
  end
end
