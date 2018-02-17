class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :model
      t.integer :model_year
      t.boolean :pass_safety_test
      t.belongs_to :owner, foreign_key: true

      t.timestamps
    end
  end
end
