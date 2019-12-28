class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :owner
      t.string :leasee
      t.belongs_to :district, null: false, foreign_key: true

      t.timestamps
    end
  end
end
