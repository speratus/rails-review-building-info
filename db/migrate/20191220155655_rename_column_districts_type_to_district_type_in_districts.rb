class RenameColumnDistrictsTypeToDistrictTypeInDistricts < ActiveRecord::Migration[6.0]
  def change
    rename_column :districts, :type, :district_type
  end
end
