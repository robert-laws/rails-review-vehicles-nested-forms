class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :event_date
      t.integer :registrations
      t.integer :activities

      t.timestamps
    end
  end
end
