class CreateEventComments < ActiveRecord::Migration[5.1]
  def change
    create_table :event_comments do |t|
      t.references :event, foreign_key: true
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
